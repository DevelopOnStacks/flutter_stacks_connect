import 'dart:typed_data';
import 'package:convert/convert.dart';
import '../models/models.dart';

class StacksUtils {
  static const int ADDRESS_VERSION_MAINNET = 22;
  static const int ADDRESS_VERSION_TESTNET = 26;

  static bool isValidStacksAddress(String address) {
    try {
      if (!address.startsWith('SP') && !address.startsWith('ST')) {
        return false;
      }

      // Decode c32 address
      final decoded = _c32Decode(address.substring(2));
      if (decoded.length != 21) {
        return false;
      }

      final version = decoded[0];
      return version == ADDRESS_VERSION_MAINNET ||
          version == ADDRESS_VERSION_TESTNET;
    } catch (_) {
      return false;
    }
  }

  static String bytesToHex(List<int> bytes) {
    return hex.encode(bytes);
  }

  static Uint8List hexToBytes(String hexString) {
    return Uint8List.fromList(hex.decode(hexString));
  }

  static BigInt satoshisToBtc(BigInt satoshis) {
    return satoshis ~/ BigInt.from(100000000);
  }

  static BigInt btcToSatoshis(BigInt btc) {
    return btc * BigInt.from(100000000);
  }

  static BigInt microStxToStx(BigInt microStx) {
    return microStx ~/ BigInt.from(1000000);
  }

  static BigInt stxToMicroStx(BigInt stx) {
    return stx * BigInt.from(1000000);
  }

  static Uint8List _c32Decode(String input) {
    const charset = 'ABCDEFGHJKLMNPQRSTUVWXYZ0123456789';
    var result = BigInt.zero;

    for (var char in input.split('')) {
      result = result * BigInt.from(32) + BigInt.from(charset.indexOf(char));
    }

    return _bigIntToBytes(result);
  }

  static String _c32Encode(Uint8List data) {
    const charset = 'ABCDEFGHJKLMNPQRSTUVWXYZ0123456789';
    var number = _bytesToBigInt(data);
    var result = '';

    while (number > BigInt.zero) {
      final remainder = (number % BigInt.from(32)).toInt();
      result = charset[remainder] + result;
      number = number ~/ BigInt.from(32);
    }

    return result;
  }

  static Uint8List _bigIntToBytes(BigInt number) {
    var hexString = number.toRadixString(16);
    if (hexString.length % 2 != 0) {
      hexString = '0' + hexString;
    }
    return hexToBytes(hexString);
  }

  static BigInt _bytesToBigInt(Uint8List bytes) {
    return BigInt.parse(bytesToHex(bytes), radix: 16);
  }

  static bool isClarityValue(dynamic value) {
    if (value is ClarityValue) return true;
    return false;
  }

  static ClarityValue toClarityValue(dynamic value) {
    if (value is BigInt) {
      return ClarityValue.uint(value);
    } else if (value is bool) {
      return ClarityValue.bool(value);
    } else if (value is String) {
      return ClarityValue.string(value);
    } else if (value is List<int>) {
      return ClarityValue.buffer(value);
    } else if (value is List) {
      return ClarityValue.list(
        value.map((v) => toClarityValue(v)).toList(),
      );
    } else if (value is Map) {
      return ClarityValue.tuple(
        Map.fromEntries(
          value.entries.map(
            (e) => MapEntry(e.key.toString(), toClarityValue(e.value)),
          ),
        ),
      );
    }
    throw ArgumentError('Cannot convert to ClarityValue: $value');
  }
}
