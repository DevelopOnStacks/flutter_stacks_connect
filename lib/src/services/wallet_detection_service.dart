import 'dart:io';
import 'package:flutter/foundation.dart';
import 'dart:js' as js;
import 'package:url_launcher/url_launcher.dart';

class WalletProviderList {
  final String id;
  final String name;
  final String? icon;
  final String? webUrl;
  final bool isInstalled;

  WalletProviderList({
    required this.id,
    required this.name,
    this.icon,
    this.webUrl,
    this.isInstalled = false,
  });
}

class WalletDetectionService {
  Future<bool> isWalletInstalled(WalletProviderList wallet) async {
    if (kIsWeb) {
      return _checkWebWallet(wallet);
    }

    if (Platform.isAndroid) {
      return _checkAndroidWallet(wallet);
    }

    if (Platform.isIOS) {
      return _checkIOSWallet(wallet);
    }

    if (Platform.isMacOS) {
      return _checkMacOSWallet(wallet);
    }

    if (Platform.isWindows) {
      return _checkWindowsWallet(wallet);
    }

    if (Platform.isLinux) {
      return _checkLinuxWallet(wallet);
    }

    return false;
  }

  bool _checkWebWallet(WalletProviderList wallet) {
    try {
      return js.context.hasProperty(wallet.id);
    } catch (e) {
      debugPrint('Error checking web wallet: $e');
      return false;
    }
  }

  Future<bool> _checkAndroidWallet(WalletProviderList wallet) async {
    try {
      final url = Uri.parse('${wallet.id}://');
      return await canLaunchUrl(url);
    } catch (e) {
      debugPrint('Error checking Android wallet: $e');
      return false;
    }
  }

  Future<bool> _checkIOSWallet(WalletProviderList wallet) async {
    try {
      final url = Uri.parse('${wallet.id}://');
      return await canLaunchUrl(url);
    } catch (e) {
      debugPrint('Error checking iOS wallet: $e');
      return false;
    }
  }

  Future<bool> _checkMacOSWallet(WalletProviderList wallet) async {
    try {
      final process = await Process.run(
          'mdfind', ['kMDItemCFBundleIdentifier == "${wallet.id}"']);
      return process.exitCode == 0 && process.stdout.toString().isNotEmpty;
    } catch (e) {
      debugPrint('Error checking macOS wallet: $e');
      return false;
    }
  }

  Future<bool> _checkWindowsWallet(WalletProviderList wallet) async {
    try {
      final process = await Process.run('reg', [
        'query',
        'HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall',
        '/f',
        wallet.name,
        '/k'
      ]);
      return process.exitCode == 0 &&
          process.stdout.toString().contains(wallet.name);
    } catch (e) {
      debugPrint('Error checking Windows wallet: $e');
      return false;
    }
  }

  Future<bool> _checkLinuxWallet(WalletProviderList wallet) async {
    try {
      final home = Platform.environment['HOME'];
      final desktopFile =
          File('$home/.local/share/applications/${wallet.id}.desktop');
      return desktopFile.existsSync();
    } catch (e) {
      debugPrint('Error checking Linux wallet: $e');
      return false;
    }
  }
}
