import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/models.dart';

class BnsService {
  final http.Client _client;
  final NetworkConfig networkConfig;

  BnsService({
    http.Client? client,
    required this.networkConfig,
  }) : _client = client ?? http.Client();

  static const int _nameMinLength = 1;
  static const int _nameMaxLength = 253;
  static final RegExp _validNamePattern = RegExp(r'^[a-z0-9-_]+$');

  /// Get address for a BNS name
  Future<String?> getAddress(String name) async {
    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v1/names/$name'),
      );

      if (response.statusCode == 404) return null;

      if (response.statusCode != 200) {
        throw BnsException(
          'Failed to get address: ${response.body}',
          response.statusCode,
        );
      }

      final data = json.decode(response.body);
      return data['address'];
    } catch (e) {
      throw BnsException('Failed to get address: $e');
    }
  }

  /// Get BNS name for an address
  Future<List<String>> getNames(String address) async {
    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v1/addresses/stacks/$address'),
      );

      if (response.statusCode != 200) {
        throw BnsException(
          'Failed to get names: ${response.body}',
          response.statusCode,
        );
      }

      final data = json.decode(response.body) as List;
      return data.map((name) => name.toString()).toList();
    } catch (e) {
      throw BnsException('Failed to get names: $e');
    }
  }

  /// Check if a name is available
  Future<bool> isNameAvailable(String name) async {
    if (!_isValidName(name)) {
      throw BnsException('Invalid name format');
    }

    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v1/names/$name/status'),
      );

      if (response.statusCode == 404) return true;
      if (response.statusCode != 200) {
        throw BnsException(
          'Failed to check name availability: ${response.body}',
          response.statusCode,
        );
      }

      final data = json.decode(response.body);
      return data['status'] == 'available';
    } catch (e) {
      throw BnsException('Failed to check name availability: $e');
    }
  }

  /// Register a new name
  Future<String> registerName(
    String name, {
    BigInt? fee,
    String? zonefileHash,
  }) async {
    if (!_isValidName(name)) {
      throw BnsException('Invalid name format');
    }

    try {
      final payload = {
        'name': name,
        'owner': networkConfig.type.name,
        'zonefile_hash': zonefileHash,
        'fee': fee?.toString(),
      };

      final response = await _client.post(
        Uri.parse('${networkConfig.url}/v1/names'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(payload),
      );

      if (response.statusCode != 200) {
        throw BnsException(
          'Failed to register name: ${response.body}',
          response.statusCode,
        );
      }

      final data = json.decode(response.body);
      return data['txid'];
    } catch (e) {
      throw BnsException('Failed to register name: $e');
    }
  }

  /// Get name price
  Future<BigInt> getNamePrice(String name) async {
    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v1/prices/names/$name'),
      );

      if (response.statusCode != 200) {
        throw BnsException(
          'Failed to get name price: ${response.body}',
          response.statusCode,
        );
      }

      final data = json.decode(response.body);
      return BigInt.parse(data['price']);
    } catch (e) {
      throw BnsException('Failed to get name price: $e');
    }
  }

  /// Transfer name ownership
  Future<String> transferName(String name, String newOwner) async {
    try {
      final payload = {
        'name': name,
        'new_owner': newOwner,
      };

      final response = await _client.post(
        Uri.parse('${networkConfig.url}/v1/names/$name/transfer'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(payload),
      );

      if (response.statusCode != 200) {
        throw BnsException(
          'Failed to transfer name: ${response.body}',
          response.statusCode,
        );
      }

      final data = json.decode(response.body);
      return data['txid'];
    } catch (e) {
      throw BnsException('Failed to transfer name: $e');
    }
  }

  /// Validate name format
  bool _isValidName(String name) {
    if (name.length < _nameMinLength || name.length > _nameMaxLength) {
      return false;
    }
    return _validNamePattern.hasMatch(name);
  }

  void dispose() {
    _client.close();
  }
}

class BnsException implements Exception {
  final String message;
  final int? statusCode;

  BnsException(this.message, [this.statusCode]);

  @override
  String toString() => statusCode != null
      ? 'BnsException ($statusCode): $message'
      : 'BnsException: $message';
}
