import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/models.dart';

class TransactionService {
  final http.Client _client;
  final NetworkConfig networkConfig;

  TransactionService({
    http.Client? client,
    required this.networkConfig,
  }) : _client = client ?? http.Client();

  Future<Map<String, dynamic>> broadcastTransaction(
      StacksTransaction transaction) async {
    try {
      final response = await _client.post(
        Uri.parse('${networkConfig.url}/v2/transactions'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(transaction.toJson()),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to broadcast transaction: ${response.body}');
      }

      return json.decode(response.body);
    } catch (e) {
      throw Exception('Error broadcasting transaction: $e');
    }
  }

  Future<Map<String, dynamic>> getTransactionStatus(String txId) async {
    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v2/transactions/$txId'),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to get transaction status: ${response.body}');
      }

      return json.decode(response.body);
    } catch (e) {
      throw Exception('Error getting transaction status: $e');
    }
  }

  Future<Map<String, dynamic>> getAccountInfo(String address) async {
    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v2/accounts/$address'),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to get account info: ${response.body}');
      }

      return json.decode(response.body);
    } catch (e) {
      throw Exception('Error getting account info: $e');
    }
  }

  Future<BigInt> getAccountBalance(String address) async {
    final accountInfo = await getAccountInfo(address);
    return BigInt.parse(accountInfo['balance'] ?? '0');
  }

  Future<List<Map<String, dynamic>>> getAccountTransactions(
    String address, {
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final response = await _client.get(
        Uri.parse(
          '${networkConfig.url}/v2/addresses/$address/transactions'
          '?limit=$limit&offset=$offset',
        ),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to get account transactions: ${response.body}');
      }

      final List<dynamic> data = json.decode(response.body);
      return data.cast<Map<String, dynamic>>();
    } catch (e) {
      throw Exception('Error getting account transactions: $e');
    }
  }

  Future<Map<String, dynamic>> getFeeEstimate(
      StacksTransaction transaction) async {
    try {
      final response = await _client.post(
        Uri.parse('${networkConfig.url}/v2/fees/transaction'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(transaction.toJson()),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to estimate fee: ${response.body}');
      }

      return json.decode(response.body);
    } catch (e) {
      throw Exception('Error estimating fee: $e');
    }
  }

  Future<Map<String, dynamic>> getNonce(String address) async {
    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v2/accounts/$address/nonce'),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to get nonce: ${response.body}');
      }

      return json.decode(response.body);
    } catch (e) {
      throw Exception('Error getting nonce: $e');
    }
  }

  void dispose() {
    _client.close();
  }
}
