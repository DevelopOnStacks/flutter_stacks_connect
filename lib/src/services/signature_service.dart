import 'dart:convert';
import 'dart:math' as math;
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:pointycastle/export.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SignatureService {
  static const secp256k1MaxValue =
      "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141";
  final ECDomainParameters _params;
  final FlutterSecureStorage _storage;
  final String _keyPrefix;

  SignatureService({
    FlutterSecureStorage? storage,
    String? keyPrefix,
  })  : _storage = storage ?? const FlutterSecureStorage(),
        _params = ECDomainParameters('secp256k1'),
        _keyPrefix = keyPrefix ?? _generateSecurePrefix();

  static String _generateSecurePrefix() {
    final random = math.Random.secure();
    final bytes = List<int>.generate(16, (i) => random.nextInt(256));
    return base64Url.encode(bytes);
  }

  String _getSecureKey(String key) => '${_keyPrefix}_$key';

  Future<void> initialize() async {
    if (!await hasPrivateKey()) {
      final privateKey = generatePrivateKey();
      await savePrivateKey(privateKey);
    }
  }

  String generatePrivateKey() {
    final random = math.Random.secure();
    BigInt privateKey;
    do {
      final bytes = List<int>.generate(32, (i) => random.nextInt(256));
      privateKey = BigInt.parse(
        bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join(),
        radix: 16,
      );
    } while (privateKey >= BigInt.parse(secp256k1MaxValue, radix: 16) ||
        privateKey == BigInt.zero);
    return privateKey.toRadixString(16).padLeft(64, '0');
  }

  Future<void> savePrivateKey(String privateKey) async {
    await _storage.write(
      key: _getSecureKey('private_key'),
      value: privateKey,
    );
  }

  Future<String> getPrivateKey() async {
    final privateKey = await _storage.read(key: _getSecureKey('private_key'));
    if (privateKey == null) {
      throw Exception('Private key not found');
    }
    return privateKey;
  }

  Future<bool> hasPrivateKey() async {
    return await _storage.containsKey(key: _getSecureKey('private_key'));
  }

  Future<void> clearPrivateKey() async {
    await _storage.delete(key: _getSecureKey('private_key'));
  }

  Future<String> signMessage(String message) async {
    final privateKeyHex = await getPrivateKey();
    final privateKey = BigInt.parse(privateKeyHex, radix: 16);
    final privateKeyParams = PrivateKeyParameter(
      ECPrivateKey(privateKey, _params),
    );

    final signer = ECDSASigner(SHA256Digest(), HMac(SHA256Digest(), 64))
      ..init(true, privateKeyParams);

    final messageBytes = utf8.encode(message);
    final messageHash = sha256.convert(messageBytes);
    final signature =
        signer.generateSignature(messageHash.bytes as Uint8List) as ECSignature;

    return _encodeSignature(signature);
  }

  Future<String> signStructuredData(Map<String, dynamic> data) async {
    final encoded = _encodeStructuredData(data);
    return signMessage(encoded);
  }

  String _encodeStructuredData(Map<String, dynamic> data) {
    final canonical = _canonicalize(data);
    return json.encode(canonical);
  }

  Map<String, dynamic> _canonicalize(Map<String, dynamic> data) {
    final sorted = Map.fromEntries(
        data.entries.toList()..sort((a, b) => a.key.compareTo(b.key)));
    final result = <String, dynamic>{};

    for (final entry in sorted.entries) {
      if (entry.value is Map) {
        result[entry.key] = _canonicalize(entry.value as Map<String, dynamic>);
      } else if (entry.value is List) {
        result[entry.key] = (entry.value as List).map((item) {
          if (item is Map) {
            return _canonicalize(item as Map<String, dynamic>);
          }
          return item;
        }).toList();
      } else {
        result[entry.key] = entry.value;
      }
    }

    return result;
  }

  String _encodeSignature(ECSignature signature) {
    final r = _bigIntToBytes(signature.r);
    final s = _bigIntToBytes(signature.s);
    return base64Url.encode(r + s);
  }

  Uint8List _bigIntToBytes(BigInt number) {
    final bytes = Uint8List(32);
    var value = number;
    for (var i = bytes.length - 1; i >= 0; i--) {
      bytes[i] = value.toUnsigned(8).toInt();
      value = value >> 8;
    }
    return bytes;
  }

  BigInt _bytesToBigInt(List<int> bytes) {
    var result = BigInt.zero;
    for (final byte in bytes) {
      result = (result << 8) | BigInt.from(byte);
    }
    return result;
  }
}
