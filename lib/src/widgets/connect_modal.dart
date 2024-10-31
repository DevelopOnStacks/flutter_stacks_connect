import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:js' as js;
import '../models/wallet_info.dart';

class ConnectModal extends StatefulWidget {
  final Function(String walletId) onSelect;
  final VoidCallback onClose;
  final bool isDarkMode;

  const ConnectModal({
    Key? key,
    required this.onSelect,
    required this.onClose,
    this.isDarkMode = false,
  }) : super(key: key);

  @override
  State<ConnectModal> createState() => _ConnectModalState();
}

class _ConnectModalState extends State<ConnectModal> {
  final List<WalletInfo> _wallets = [
    WalletInfo(
      id: 'leather',
      name: 'Leather',
      icon: 'https://leather.io/icons/icon-512x512.png',
      webUrl: 'https://leather.io',
      chromeWebStoreUrl:
          'https://chrome.google.com/webstore/detail/leather-wallet/ldinpeekobnhjjdofggfgjlcehhmanlj',
      mozillaAddOnsUrl:
          'https://addons.mozilla.org/firefox/addon/leather-wallet/',
    ),
    WalletInfo(
      id: 'xverse',
      name: 'Xverse',
      icon: 'https://xverse.app/icons/icon-512x512.png',
      webUrl: 'https://xverse.app',
      chromeWebStoreUrl:
          'https://chrome.google.com/webstore/detail/xverse-wallet/idnnbdplmphpflfnlkomgpfbpcgelopg',
    ),
  ];

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkInstalledWallets();
  }

  Future<void> _checkInstalledWallets() async {
    for (var wallet in _wallets) {
      wallet.isInstalled = _isWalletInstalled(wallet.id);
    }
    setState(() => _isLoading = false);
  }

  bool _isWalletInstalled(String walletId) {
    return js.context.hasProperty('${walletId}Provider');
  }

  Future<void> _launchWalletInstall(WalletInfo wallet) async {
    String? url;

    final userAgent =
        js.context['navigator']['userAgent'].toString().toLowerCase();
    if (userAgent.contains('firefox')) {
      url = wallet.mozillaAddOnsUrl;
    } else {
      url = wallet.chromeWebStoreUrl;
    }

    url ??= wallet.webUrl;

    if (url != null) {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = widget.isDarkMode ? Colors.grey[900] : Colors.white;
    final textColor = widget.isDarkMode ? Colors.white : Colors.black;

    return Dialog(
      backgroundColor: backgroundColor,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 400,
          maxHeight: 500,
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeader(textColor),
            if (_isLoading)
              const Padding(
                padding: EdgeInsets.all(32.0),
                child: CircularProgressIndicator(),
              )
            else
              Expanded(
                child: _buildWalletList(textColor),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(Color textColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Connect Wallet',
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: Icon(Icons.close, color: textColor),
          onPressed: widget.onClose,
        ),
      ],
    );
  }

  Widget _buildWalletList(Color textColor) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _wallets.length,
      itemBuilder: (context, index) {
        final wallet = _wallets[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                wallet.icon,
                width: 40,
                height: 40,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.account_balance_wallet),
              ),
            ),
            title: Text(
              wallet.name,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              wallet.isInstalled ? 'Installed' : 'Not installed',
              style: TextStyle(
                color: textColor.withOpacity(0.7),
              ),
            ),
            trailing: ElevatedButton(
              onPressed: () {
                if (wallet.isInstalled) {
                  widget.onSelect(wallet.id);
                } else {
                  _launchWalletInstall(wallet);
                }
              },
              child: Text(wallet.isInstalled ? 'Connect' : 'Install'),
            ),
          ),
        );
      },
    );
  }
}
