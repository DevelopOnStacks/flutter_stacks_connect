import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';

part 'contract_call.freezed.dart';
part 'contract_call.g.dart';

@freezed
class ContractCall with _$ContractCall {
  const factory ContractCall({
    required String contractAddress,
    required String contractName,
    required String functionName,
    required List<ClarityValue> functionArgs,
    String? network,
    int? fee,
    List<PostCondition>? postConditions,
  }) = _ContractCall;

  factory ContractCall.fromJson(Map<String, dynamic> json) =>
      _$ContractCallFromJson(json);
}
