import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/wallet_provider.dart';
import '../utils/stacks_utils.dart';

class AssetList extends StatelessWidget {
  final String stxAddress;

  const AssetList({
    Key? key,
    required this.stxAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WalletProvider>(
      builder: (context, provider, _) {
        return FutureBuilder<Map<String, dynamic>>(
          future: provider.getAccountInfo(stxAddress),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (!snapshot.hasData) {
              return const Text('No assets found');
            }

            final assets = snapshot.data!;
            final balance = BigInt.parse(assets['balance'].toString());

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: const Text('STX Balance'),
                  subtitle: Text(
                    '${StacksUtils.microStxToStx(balance)} STX',
                  ),
                ),
                if (assets['fungible_tokens'] != null) ...[
                  const Divider(),
                  const Text('Fungible Tokens'),
                  for (var token in assets['fungible_tokens'])
                    ListTile(
                      title: Text(token['name']),
                      subtitle: Text(token['balance'].toString()),
                    ),
                ],
                if (assets['non_fungible_tokens'] != null) ...[
                  const Divider(),
                  const Text('Non-Fungible Tokens'),
                  for (var nft in assets['non_fungible_tokens'])
                    ListTile(
                      title: Text(nft['name']),
                      subtitle: Text('Count: ${nft['count']}'),
                    ),
                ],
              ],
            );
          },
        );
      },
    );
  }
}
