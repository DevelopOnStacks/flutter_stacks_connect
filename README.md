```markdown
# Flutter Stacks Connect Package

A Flutter implementation for interacting with the Stacks blockchain network. This package provides cross-platform support for connecting to Stacks wallets and performing blockchain operations.

## Features

- 🌐 Cross-platform support (Web, iOS, Android, macOS, Windows, Linux)
- 🔐 Secure wallet connection and management
- 💰 STX token transfers
- 📝 Smart contract interactions
- 🤝 Transaction signing and broadcasting
- 💼 Profile management
- 🌍 Multiple network support (Mainnet, Testnet, Devnet)
- 🎨 Customizable UI components

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_stacks_connect: ^0.1.0
```

## Basic Usage

### Initialize Provider

```dart
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => WalletProvider(
            networkConfig: NetworkConfig.mainnet(),
          ),
        ),
      ],
      child: MyApp(),
    ),
  );
}
```

### Connect Wallet (Basic)

```dart
class WalletConnectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StacksConnectButton(
          appName: 'My Stacks App',
          appIcon: 'https://myapp.com/icon.png',
          onConnect: (session) {
            print('Connected: ${session.publicKey}');
          },
          onCancel: () {
            print('Connection cancelled');
          },
        ),
      ),
    );
  }
}
```

### Connect Wallet (Enhanced)

```dart
EnhancedConnectModal(
  appName: 'My Stacks App',
  appIcon: 'https://myapp.com/icon.png',
  wallets: [
    WalletProvider(
      id: 'hiro',
      name: 'Hiro Wallet',
      icon: 'https://wallet.hiro.so/logo.png',
      webUrl: 'https://wallet.hiro.so',
    ),
    // Add more wallets
  ],
  onSelect: (wallet) {
    print('Selected wallet: ${wallet.name}');
  },
  primaryColor: Colors.blue,
  backgroundColor: Colors.white,
)
```

### Send STX Transaction

```dart
final provider = context.read<WalletProvider>();

try {
  final result = await provider.sendTransaction(
    StacksTransaction(
      type: TransactionType.stxTransfer,
      recipient: 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM',
      amount: BigInt.from(1000000), // 1 STX
      network: NetworkConfig.mainnet(),
    ),
  );
  print('Transaction ID: ${result['txId']}');
} catch (e) {
  print('Error: $e');
}
```

### Call Smart Contract

```dart
final provider = context.read<WalletProvider>();

try {
  final result = await provider.sendTransaction(
    StacksTransaction(
      type: TransactionType.contractCall,
      contractAddress: 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM',
      contractName: 'my-contract',
      functionName: 'my-function',
      functionArgs: [
        ClarityValue.uint(123),
        ClarityValue.string('hello'),
      ],
      network: NetworkConfig.mainnet(),
    ),
  );
  print('Transaction ID: ${result['txId']}');
} catch (e) {
  print('Error: $e');
}
```

## API Reference

### WalletProvider

```dart
class WalletProvider {
  // Properties
  bool get isConnected
  StacksSession? get session
  NetworkConfig get networkConfig

  // Authentication
  Future<void> connect({required String appName, required String appIcon})
  Future<void> disconnect()

  // Account Information
  Future<Map<String, dynamic>> getAccountInfo(String address)
  Future<BigInt> getBalance(String address)
  Future<Profile> getProfile(String stxAddress)
  Future<void> updateProfile(String stxAddress, Profile profile)

  // Transactions
  Future<Map<String, dynamic>> sendTransaction(StacksTransaction transaction)
  Future<Map<String, dynamic>> getTransactionStatus(String txId)
}
```

### UI Components

#### StacksConnectButton
```dart
StacksConnectButton({
  required String appName,
  required String appIcon,
  Widget? child,
  void Function(StacksSession)? onConnect,
  VoidCallback? onCancel,
  ButtonStyle? style,
})
```

#### EnhancedConnectModal
```dart
EnhancedConnectModal({
  List<WalletProvider>? wallets,
  required Function(WalletProvider) onSelect,
  VoidCallback? onCancel,
  required String appName,
  required String appIcon,
  Color? primaryColor,
  Color? backgroundColor,
  TextStyle? titleStyle,
  TextStyle? subtitleStyle,
  BoxDecoration? modalDecoration,
  Duration? autoCloseDuration,
})
```

## Models

### NetworkConfig
```dart
class NetworkConfig {
  final String url;
  final NetworkType type;

  static const mainnet = NetworkConfig(/*...*/);
  static const testnet = NetworkConfig(/*...*/);
  static const devnet = NetworkConfig(/*...*/);
}
```

### StacksTransaction
```dart
class StacksTransaction {
  final TransactionType type;
  final String? contractAddress;
  final String? contractName;
  final String? functionName;
  final List<ClarityValue>? functionArgs;
  final String? recipient;
  final BigInt? amount;
  final String? memo;
  final NetworkConfig network;
  final int? fee;
}
```

## Contributing

Contributions are welcome! Please read our [contributing guidelines](CONTRIBUTING.md) first.

## Additional information

- [Documentation](https://pub.dev/documentation/flutter_stacks_connect/latest/)
- [GitHub Repository](https://github.com/BuildOnStack/flutter_stacks_connect)
- [Issue Tracker](https://github.com/BuildOnStack/flutter_stacks_connect/issues)

```

## LICENSE
```
MIT License

Copyright (c) 2024 Your Name

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```