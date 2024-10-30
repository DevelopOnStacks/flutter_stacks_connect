import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/wallet_provider.dart';

class WalletStatus extends StatelessWidget {
  final Widget? connectedBuilder;
  final Widget? disconnectedBuilder;

  const WalletStatus({
    Key? key,
    this.connectedBuilder,
    this.disconnectedBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WalletProvider>(
      builder: (context, provider, _) {
        if (provider.isConnected) {
          return connectedBuilder ??
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Connected: ${provider.session?.publicKey}'),
                  ElevatedButton(
                    onPressed: provider.disconnect,
                    child: const Text('Disconnect'),
                  ),
                ],
              );
        }

        return disconnectedBuilder ??
            const Text('Not connected to a Stacks wallet');
      },
    );
  }
}
