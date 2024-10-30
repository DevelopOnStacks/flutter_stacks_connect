import 'package:freezed_annotation/freezed_annotation.dart';
import 'network.dart';
import 'post_condition.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

enum TransactionType {
  contractCall,
  contractDeploy,
  stxTransfer,
}

@JsonSerializable(explicitToJson: true)
class NetworkConfigConverter
    implements JsonConverter<NetworkConfig, Map<String, dynamic>> {
  const NetworkConfigConverter();

  @override
  NetworkConfig fromJson(Map<String, dynamic> json) {
    return NetworkConfig(
      url: json['url'] as String,
      type: NetworkType.values.firstWhere(
        (e) => e.toString() == 'NetworkType.${json['type']}',
      ),
    );
  }

  @override
  Map<String, dynamic> toJson(NetworkConfig object) {
    return {
      'url': object.url,
      'type': object.type.toString().split('.').last,
    };
  }
}

@freezed
class StacksTransaction with _$StacksTransaction {
  const factory StacksTransaction({
    required TransactionType type,
    String? contractAddress,
    String? contractName,
    String? functionName,
    List<dynamic>? functionArgs,
    String? recipient,
    @BigIntConverter() BigInt? amount,
    String? memo,
    @NetworkConfigConverter() required NetworkConfig network,
    int? fee,
    List<PostCondition>? postConditions,
  }) = _StacksTransaction;

  factory StacksTransaction.fromJson(Map<String, dynamic> json) =>
      _$StacksTransactionFromJson(json);
}

class BigIntConverter implements JsonConverter<BigInt, String> {
  const BigIntConverter();

  @override
  BigInt fromJson(String json) => BigInt.parse(json);

  @override
  String toJson(BigInt object) => object.toString();
}
