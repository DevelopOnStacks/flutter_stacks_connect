import 'dart:convert';
import 'dart:io';
import 'dart:js' as js;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:android_intent_plus/android_intent.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/models.dart';

class StacksWalletService {
  final http.Client _client;
  final NetworkConfig networkConfig;

  static const Map<NetworkType, String> _walletDeepLinks = {
    NetworkType.mainnet: 'stacks://',
    NetworkType.testnet: 'stacks://',
    NetworkType.devnet: 'stacks://',
  };

  static const Map<NetworkType, String> _walletPackages = {
    NetworkType.mainnet: 'so.hiro.wallet',
    NetworkType.testnet: 'so.hiro.wallet',
    NetworkType.devnet: 'so.hiro.wallet',
  };

  static const Map<NetworkType, String> _walletStoreUrls = {
    NetworkType.mainnet: 'https://wallet.hiro.so/wallet/install',
    NetworkType.testnet: 'https://wallet.hiro.so/wallet/install',
    NetworkType.devnet: 'https://wallet.hiro.so/wallet/install',
  };

  StacksWalletService({
    http.Client? client,
    required this.networkConfig,
  }) : _client = client ?? http.Client();

  String get _walletDeepLink => _walletDeepLinks[networkConfig.type]!;
  String get _walletPackage => _walletPackages[networkConfig.type]!;
  String get _walletStoreUrl => _walletStoreUrls[networkConfig.type]!;

  Future<void> connect(ConnectParams params) async {
    if (kIsWeb) {
      await _connectWeb(params);
    } else if (Platform.isAndroid) {
      await _connectAndroid(params);
    } else if (Platform.isIOS) {
      await _connectIOS(params);
    } else if (Platform.isMacOS) {
      await _connectMacOS(params);
    } else if (Platform.isWindows) {
      await _connectWindows(params);
    } else if (Platform.isLinux) {
      await _connectLinux(params);
    } else {
      throw PlatformException(
        code: 'UNSUPPORTED_PLATFORM',
        message: 'Current platform is not supported',
      );
    }
  }

  Future<void> _connectWeb(ConnectParams params) async {
    js.context['flutterStacksCallback'] = js.allowInterop((String data) {
      final response = json.decode(data);
      params.onFinish(StacksSession.fromJson(response));
    });

    debugPrint('Attempting web connection...');

    if (js.context.hasProperty('StacksProvider')) {
      debugPrint('StacksProvider found in window');
      _connectWithExistingProvider(params.walletId, params.appName,
          params.appIcon, params.onFinish, params.onCancel);
    } else {
      debugPrint('No StacksProvider found, redirecting to wallet');
      final walletUrl = Uri.parse('https://wallet.hiro.so/wallet/install');
      await launchUrl(
        walletUrl,
        mode: LaunchMode.externalApplication,
      );
      params.onCancel();
    }
  }

  Future<void> _connectAndroid(ConnectParams params) async {
    final intent = AndroidIntent(
      action: 'android.intent.action.VIEW',
      data: '$_walletDeepLink/connect',
      package: _walletPackage,
      arguments: {
        'appName': params.appName,
        'appIcon': params.appIcon,
        'network': networkConfig.type.name,
      },
    );

    final canResolve = await intent.canResolveActivity();
    if (canResolve ?? false) {
      await intent.launch();
    } else {
      await _launchStore(LaunchMode.externalApplication);
    }
  }

  Future<void> _connectIOS(ConnectParams params) async {
    final url = Uri.parse('$_walletDeepLink/connect').replace(
      queryParameters: {
        'appName': params.appName,
        'appIcon': params.appIcon,
        'network': networkConfig.type.name,
      },
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      final appStoreUrl =
          Uri.parse('https://apps.apple.com/app/hiro-wallet/id1627858839');
      await launchUrl(appStoreUrl, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _connectMacOS(ConnectParams params) async {
    final url = Uri.parse('$_walletDeepLink/connect').replace(
      queryParameters: {
        'appName': params.appName,
        'appIcon': params.appIcon,
        'network': networkConfig.type.name,
      },
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      final macAppStoreUrl = Uri.parse(
          'macappstore://apps.apple.com/app/hiro-wallet/id1627858839');
      await launchUrl(macAppStoreUrl, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _connectWindows(ConnectParams params) async {
    final url = Uri.parse('$_walletDeepLink/connect').replace(
      queryParameters: {
        'appName': params.appName,
        'appIcon': params.appIcon,
        'network': networkConfig.type.name,
      },
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      final microsoftStoreUrl = Uri.parse(_walletStoreUrl);
      await launchUrl(microsoftStoreUrl, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _connectLinux(ConnectParams params) async {
    final url = Uri.parse('$_walletDeepLink/connect').replace(
      queryParameters: {
        'appName': params.appName,
        'appIcon': params.appIcon,
        'network': networkConfig.type.name,
      },
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      final downloadUrl = Uri.parse(_walletStoreUrl);
      await launchUrl(downloadUrl, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _launchStore(LaunchMode mode) async {
    final storeUrl = Uri.parse(_walletStoreUrl);
    if (await canLaunchUrl(storeUrl)) {
      await launchUrl(storeUrl, mode: mode);
    } else {
      throw Exception('Could not launch wallet store');
    }
  }

  Future<Map<String, dynamic>> getNetworkStatus() async {
    try {
      final response = await _client.get(
        Uri.parse('${networkConfig.url}/v2/info'),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to get network status: ${response.body}');
      }

      return json.decode(response.body);
    } catch (e) {
      throw Exception('Error getting network status: $e');
    }
  }

  void _connectWithExistingProvider(
    String walletId,
    String appName,
    String appIcon,
    Function(StacksSession) onFinish,
    Function() onCancel,
  ) {
    js.context['flutterStacksCallback'] = js.allowInterop((dynamic data) {
      debugPrint('Received callback data: $data');
      try {
        final Map<String, dynamic> response = json.decode(data.toString());
        final session = StacksSession.fromJson(response);
        onFinish(session);
      } catch (e) {
        debugPrint('Error processing callback: $e');
        onCancel();
      }
    });

    js.context['flutterStacksCancel'] = js.allowInterop(() {
      debugPrint('Connection cancelled');
      onCancel();
    });

    try {
      final jsProvider = js.context['StacksProvider'];
      final connectOptions = js.JsObject.jsify({
        'appDetails': {
          'id': walletId,
          'name': appName,
          'icon': appIcon,
        },
        'onFinish': 'window.flutterStacksCallback',
        'onCancel': 'window.flutterStacksCancel',
        'network': networkConfig.type.name,
      });

      jsProvider.callMethod('connect', [connectOptions]);
    } catch (e) {
      debugPrint('Error calling connect: $e');
      onCancel();
    }
  }

  bool isWalletInstalled() {
    if (!kIsWeb) return false;
    return js.context.hasProperty('StacksProvider');
  }

  void dispose() {
    _client.close();
  }
}

class PlatformException implements Exception {
  final String code;
  final String message;

  PlatformException({
    required this.code,
    required this.message,
  });

  @override
  String toString() => 'PlatformException($code): $message';
}
