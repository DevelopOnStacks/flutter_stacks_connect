import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/models.dart';

class BitcoinService {
  final http.Client _client;
  final NetworkConfig networkConfig;

  static const Map<NetworkType, String> _btcUrls = {
    NetworkType.mainnet: 'https://blockstream.info/api',
    NetworkType.testnet: 'https://blockstream.info/testnet/api',
    NetworkType.devnet: 'http://localhost:3002',
  };

  BitcoinService({
    http.Client? client,
    required this.networkConfig,
  }) : _client = client ?? http.Client();

  String get _baseUrl => _btcUrls[networkConfig.type]!;

  Future<String> signPsbt(BitcoinTransaction tx) async {
    final response = await _client.post(
      Uri.parse('$_baseUrl/psbt/sign'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(tx.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to sign PSBT: ${response.body}');
    }

    return json.decode(response.body)['signedPsbt'];
  }

  Future<String> broadcastTransaction(String signedTx) async {
    final response = await _client.post(
      Uri.parse('$_baseUrl/tx'),
      body: signedTx,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to broadcast transaction: ${response.body}');
    }

    return response.body; // Returns txid
  }

  Future<Map<String, dynamic>> getUtxos(String address) async {
    final response = await _client.get(
      Uri.parse('$_baseUrl/address/$address/utxo'),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get UTXOs: ${response.body}');
    }

    return json.decode(response.body);
  }

  Future<Map<String, dynamic>> getTransaction(String txid) async {
    final response = await _client.get(
      Uri.parse('$_baseUrl/tx/$txid'),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get transaction: ${response.body}');
    }

    return json.decode(response.body);
  }

  Future<BigInt> getBalance(String address) async {
    final response = await _client.get(
      Uri.parse('$_baseUrl/address/$address'),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get balance: ${response.body}');
    }

    final data = json.decode(response.body);
    return BigInt.parse(data['chain_stats']['funded_txo_sum'].toString());
  }

  void dispose() {
    _client.close();
  }
}
