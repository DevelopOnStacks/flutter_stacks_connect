import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/models.dart';

class ContractService {
  final http.Client _client;
  final NetworkConfig networkConfig;

  ContractService({
    http.Client? client,
    required this.networkConfig,
  }) : _client = client ?? http.Client();

  /// Deploy a new contract
  Future<String> deployContract({
    required String code,
    required String name,
    required Map<String, dynamic>? constructorArgs,
    List<PostCondition>? postConditions,
    BigInt? fee,
  }) async {
    try {
      final payload = {
        'code': code,
        'name': name,
        'network': networkConfig.type.name,
        'constructor_args': constructorArgs,
        'fee': fee?.toString(),
        'post_conditions': postConditions?.map((pc) => pc.toJson()).toList(),
      };

      final response = await _client.post(
        Uri.parse('${networkConfig.url}/v2/contracts/deploy'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(payload),
      );

      if (response.statusCode != 200) {
        throw ContractException(
          'Failed to deploy contract: ${response.body}',
          response.statusCode,
        );
      }

      final result = json.decode(response.body);
      return result['txid'];
    } catch (e) {
      throw ContractException('Contract deployment failed: $e');
    }
  }

  /// Get contract interface (ABI)
  Future<Map<String, dynamic>> getContractInterface(
      String address, String name) async {
    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v2/contracts/interface/$address/$name'),
      );

      if (response.statusCode != 200) {
        throw ContractException(
          'Failed to get contract interface: ${response.body}',
          response.statusCode,
        );
      }

      return json.decode(response.body);
    } catch (e) {
      throw ContractException('Failed to get contract interface: $e');
    }
  }

  /// Check if contract exists
  Future<bool> isContractDeployed(String address, String name) async {
    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v2/contracts/$address/$name'),
      );
      return response.statusCode == 200;
    } catch (_) {
      return false;
    }
  }

  /// Get contract source
  Future<String> getContractSource(String address, String name) async {
    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v2/contracts/source/$address/$name'),
      );

      if (response.statusCode != 200) {
        throw ContractException(
          'Failed to get contract source: ${response.body}',
          response.statusCode,
        );
      }

      final result = json.decode(response.body);
      return result['source'];
    } catch (e) {
      throw ContractException('Failed to get contract source: $e');
    }
  }
}

class ContractException implements Exception {
  final String message;
  final int? statusCode;

  ContractException(this.message, [this.statusCode]);

  @override
  String toString() => statusCode != null
      ? 'ContractException ($statusCode): $message'
      : 'ContractException: $message';
}
