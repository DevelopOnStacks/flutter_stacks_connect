import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/wallet_provider.dart';
import '../models/models.dart';

class StacksConnectButton extends StatelessWidget {
  final String appName;
  final String appIcon;
  final Widget? child;
  final void Function(StacksSession)? onConnect;
  final VoidCallback? onCancel;
  final ButtonStyle? style;

  const StacksConnectButton({
    Key? key,
    required this.appName,
    required this.appIcon,
    this.child,
    this.onConnect,
    this.onCancel,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WalletProvider>(
      builder: (context, provider, _) {
        return ElevatedButton(
          style: style,
          onPressed: provider.isConnected
              ? null
              : () async {
                  try {
                    await provider.connect(
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
          child: child ??
              Text(provider.isConnected ? 'Connected' : 'Connect Wallet'),
        );
      },
    );
  }
}
