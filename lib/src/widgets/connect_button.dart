import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/providers.dart';
import '../models/models.dart';
import 'connect_modal.dart';

class StacksConnectButton extends StatelessWidget {
  final String appName;
  final String appIcon;
  final void Function(StacksSession)? onConnect;
  final VoidCallback? onCancel;
  final ButtonStyle? style;
  final Widget? child;
  final bool isDarkMode;

  const StacksConnectButton({
    Key? key,
    required this.appName,
    required this.appIcon,
    this.onConnect,
    this.onCancel,
    this.style,
    this.child,
    this.isDarkMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WalletProvider>(
      builder: (context, provider, _) {
        if (provider.isConnected) {
          return ElevatedButton(
            style: style,
            onPressed: null,
            child: child ?? const Text('Connected'),
          );
        }

        return ElevatedButton(
          style: style,
          onPressed: () => _showConnectModal(context, provider),
          child: child ?? const Text('Connect Wallet'),
        );
      },
    );
  }

  void _showConnectModal(BuildContext context, WalletProvider provider) {
    showDialog(
      context: context,
      builder: (context) => ConnectModal(
        isDarkMode: isDarkMode,
        onSelect: (walletId) async {
          Navigator.of(context).pop();
          try {
            await provider.connect(
              walletId: walletId,
              appName: appName,
              appIcon: appIcon,
            );
            if (onConnect != null && provider.session != null) {
              onConnect!(provider.session!);
            }
          } catch (e) {
            onCancel?.call();
          }
        },
        onClose: () {
          Navigator.of(context).pop();
          onCancel?.call();
        },
      ),
    );
  }
}
