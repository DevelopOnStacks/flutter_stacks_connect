class WalletInfo {
  final String id;
  final String name;
  final String icon;
  final String? webUrl;
  final String? chromeWebStoreUrl;
  final String? mozillaAddOnsUrl;
  final String? googlePlayStoreUrl;
  final String? iOSAppStoreUrl;
  bool isInstalled;

  WalletInfo({
    required this.id,
    required this.name,
    required this.icon,
    this.webUrl,
    this.chromeWebStoreUrl,
    this.mozillaAddOnsUrl,
    this.googlePlayStoreUrl,
    this.iOSAppStoreUrl,
    this.isInstalled = false,
  });
}

class ConnectParams {
  final String walletId;
  final String appName;
  final String appIcon;
  final Function(dynamic) onFinish;
  final Function() onCancel;

  ConnectParams({
    required this.walletId,
    required this.appName,
    required this.appIcon,
    required this.onFinish,
    required this.onCancel,
  });
}
