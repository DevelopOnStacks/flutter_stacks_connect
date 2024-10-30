import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../services/services.dart';
import '../models/models.dart';

/// Provider that manages the Stacks wallet state and operations
class WalletProvider extends ChangeNotifier {
  final StacksWalletService _walletService;
  final BitcoinService _bitcoinService;
  final TransactionService _transactionService;
  final ProfileService _profileService;
  final FlutterSecureStorage _storage;
  final NetworkConfig _config;

  StacksSession? _session;
  bool _isConnected = false;

  WalletProvider({
    StacksWalletService? walletService,
    BitcoinService? bitcoinService,
    TransactionService? transactionService,
    ProfileService? profileService,
    FlutterSecureStorage? storage,
    required NetworkConfig networkConfig,
  })  : _walletService =
            walletService ?? StacksWalletService(networkConfig: networkConfig),
        _bitcoinService =
            bitcoinService ?? BitcoinService(networkConfig: networkConfig),
        _transactionService = transactionService ??
            TransactionService(networkConfig: networkConfig),
        _profileService =
            profileService ?? ProfileService(networkConfig: networkConfig),
        _storage = storage ?? const FlutterSecureStorage(),
        _config = networkConfig {
    _init();
  }

  /// Whether the wallet is currently connected
  bool get isConnected => _isConnected;

  /// Current session information
  StacksSession? get session => _session;

  /// Network configuration
  NetworkConfig get networkConfig => _config;

  /// Initialize the wallet provider
  Future<void> _init() async {
    try {
      final sessionData = await _storage.read(key: 'session');
      if (sessionData != null) {
        _session = StacksSession.fromJson(json.decode(sessionData));
        _isConnected = true;
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Error initializing wallet: $e');
      _isConnected = false;
      _session = null;
    }
  }

  /// Connect to a wallet
  Future<void> connect({
    required String appName,
    required String appIcon,
  }) async {
    try {
      await _walletService.connect(
        ConnectParams(
          appName: appName,
          appIcon: appIcon,
          onFinish: (sessionData) async {
            _session = sessionData;
            _isConnected = true;
            await _storage.write(
              key: 'session',
              value: json.encode(_session!.toJson()),
            );
            notifyListeners();
          },
          onCancel: () {
            _isConnected = false;
            notifyListeners();
          },
        ),
      );
    } catch (e) {
      _isConnected = false;
      notifyListeners();
      rethrow;
    }
  }

  /// Disconnect the wallet
  Future<void> disconnect() async {
    try {
      await _storage.delete(key: 'session');
      _session = null;
      _isConnected = false;
      notifyListeners();
    } catch (e) {
      debugPrint('Error disconnecting wallet: $e');
      rethrow;
    }
  }

  /// Get account information for an address
  Future<Map<String, dynamic>> getAccountInfo(String address) async {
    try {
      return await _transactionService.getAccountInfo(address);
    } catch (e) {
      debugPrint('Error getting account info: $e');
      rethrow;
    }
  }

  /// Get account balance for an address
  Future<BigInt> getBalance(String address) async {
    try {
      return await _transactionService.getAccountBalance(address);
    } catch (e) {
      debugPrint('Error getting balance: $e');
      rethrow;
    }
  }

  /// Get profile information for a Stacks address
  Future<Profile> getProfile(String stxAddress) async {
    if (!_isConnected) throw NotConnectedException();
    try {
      return await _profileService.getProfile(stxAddress);
    } catch (e) {
      debugPrint('Error getting profile: $e');
      rethrow;
    }
  }

  /// Update profile information for a Stacks address
  Future<void> updateProfile(String stxAddress, Profile profile) async {
    if (!_isConnected) throw NotConnectedException();
    try {
      await _profileService.updateProfile(stxAddress, profile);
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating profile: $e');
      rethrow;
    }
  }

  /// Broadcast a transaction
  Future<Map<String, dynamic>> sendTransaction(
      StacksTransaction transaction) async {
    if (!_isConnected) throw NotConnectedException();
    try {
      final result =
          await _transactionService.broadcastTransaction(transaction);
      return result;
    } catch (e) {
      debugPrint('Error sending transaction: $e');
      throw Exception('Failed to send transaction: $e');
    }
  }

  /// Get transaction status
  Future<Map<String, dynamic>> getTransactionStatus(String txId) async {
    try {
      return await _transactionService.getTransactionStatus(txId);
    } catch (e) {
      debugPrint('Error getting transaction status: $e');
      rethrow;
    }
  }

  /// Sign a PSBT (Partially Signed Bitcoin Transaction)
  Future<String> signPsbt(BitcoinTransaction tx) async {
    if (!_isConnected) throw NotConnectedException();
    try {
      return await _bitcoinService.signPsbt(tx);
    } catch (e) {
      debugPrint('Error signing PSBT: $e');
      rethrow;
    }
  }

  /// Get Bitcoin transaction information
  Future<Map<String, dynamic>> getBitcoinTransaction(String txId) async {
    try {
      return await _bitcoinService.getTransaction(txId);
    } catch (e) {
      debugPrint('Error getting Bitcoin transaction: $e');
      rethrow;
    }
  }

  /// Get Bitcoin UTXOs for an address
  Future<Map<String, dynamic>> getBitcoinUtxos(String address) async {
    try {
      return await _bitcoinService.getUtxos(address);
    } catch (e) {
      debugPrint('Error getting Bitcoin UTXOs: $e');
      rethrow;
    }
  }

  /// Get Bitcoin balance for an address
  Future<BigInt> getBitcoinBalance(String address) async {
    try {
      return await _bitcoinService.getBalance(address);
    } catch (e) {
      debugPrint('Error getting Bitcoin balance: $e');
      rethrow;
    }
  }

  /// Get transaction history for an account
  Future<List<Map<String, dynamic>>> getTransactionHistory(
    String address, {
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      return await _transactionService.getAccountTransactions(
        address,
        limit: limit,
        offset: offset,
      );
    } catch (e) {
      debugPrint('Error getting transaction history: $e');
      rethrow;
    }
  }

  /// Estimate fee for a transaction
  Future<Map<String, dynamic>> estimateFee(
      StacksTransaction transaction) async {
    try {
      return await _transactionService.getFeeEstimate(transaction);
    } catch (e) {
      debugPrint('Error estimating fee: $e');
      rethrow;
    }
  }

  /// Get current nonce for an address
  Future<Map<String, dynamic>> getNonce(String address) async {
    try {
      return await _transactionService.getNonce(address);
    } catch (e) {
      debugPrint('Error getting nonce: $e');
      rethrow;
    }
  }
}

/// Exception thrown when trying to perform operations without a connected wallet
class NotConnectedException implements Exception {
  final String message = 'Wallet not connected';
  @override
  String toString() => message;
}
