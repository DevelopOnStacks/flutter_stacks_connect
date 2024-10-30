import 'package:freezed_annotation/freezed_annotation.dart';

part 'network.freezed.dart';
part 'network.g.dart';

enum NetworkType { mainnet, testnet, devnet }

@freezed
class NetworkConfig with _$NetworkConfig {
  const factory NetworkConfig({
    required String url,
    required NetworkType type,
  }) = _NetworkConfig;

  const NetworkConfig._();

  factory NetworkConfig.fromJson(Map<String, dynamic> json) =>
      _$NetworkConfigFromJson(json);

  String get name => type.toString().split('.').last;

  static const mainnet = NetworkConfig(
    url: 'https://stacks-node-api.mainnet.stacks.co',
    type: NetworkType.mainnet,
  );

  static const testnet = NetworkConfig(
    url: 'https://stacks-node-api.testnet.stacks.co',
    type: NetworkType.testnet,
  );

  static const devnet = NetworkConfig(
    url: 'http://localhost:3999',
    type: NetworkType.devnet,
  );
}
