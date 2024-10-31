import 'package:freezed_annotation/freezed_annotation.dart';

part 'clarity_value.freezed.dart';
part 'clarity_value.g.dart';

@freezed
class ClarityValue with _$ClarityValue {
  const factory ClarityValue.none() = NoneCV;
  const factory ClarityValue.uint(BigInt value) = UIntCV;
  const factory ClarityValue.int(BigInt value) = IntCV;
  const factory ClarityValue.bool(bool value) = BoolCV;
  const factory ClarityValue.buffer(List<int> buffer) = BufferCV;
  const factory ClarityValue.string(String content) = StringCV;
  const factory ClarityValue.list(List<ClarityValue> values) = ListCV;
  const factory ClarityValue.tuple(Map<String, ClarityValue> data) = TupleCV;
  const factory ClarityValue.principal(String address) = PrincipalCV;

  factory ClarityValue.fromJson(Map<String, dynamic> json) =>
      _$ClarityValueFromJson(json);
}
