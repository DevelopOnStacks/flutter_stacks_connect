// This is a basic Flutter stacks connect test
//
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_stacks_connect/flutter_stacks_connect.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  group('WalletProvider Tests', () {
    late WalletProvider provider;

    setUp(() {
      provider = WalletProvider(networkConfig: NetworkConfig.testnet);
    });

    test('Initial state is disconnected', () {
      expect(provider.isConnected, false);
      expect(provider.session, null);
    });
  });

  group('StacksConnectButton Tests', () {
    testWidgets('Button shows correct text when disconnected', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: ChangeNotifierProvider(
            create: (_) => WalletProvider(networkConfig: NetworkConfig.testnet),
            child: const StacksConnectButton(
              appName: 'Test App',
              appIcon: 'test-icon.png',
            ),
          ),
        ),
      );

      expect(find.text('Connect Wallet'), findsOneWidget);
    });
  });
}
