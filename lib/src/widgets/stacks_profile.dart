import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/wallet_provider.dart';
import '../models/models.dart';

class StacksProfile extends StatelessWidget {
  final String stxAddress;
  final double? width;
  final double? height;

  const StacksProfile({
    Key? key,
    required this.stxAddress,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WalletProvider>(
      builder: (context, provider, _) {
        return FutureBuilder<Profile?>(
          future: provider.getProfile(stxAddress),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            final profile = snapshot.data;
            if (profile == null) {
              return const Text('No profile found');
            }

            return Container(
              width: width,
              height: height,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (profile.image != null)
                    Image.network(
                      profile.image!,
                      width: 64,
                      height: 64,
                      fit: BoxFit.cover,
                    ),
                  const SizedBox(height: 8),
                  Text(
                    profile.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  if (profile.description != null)
                    Text(
                      profile.description!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
