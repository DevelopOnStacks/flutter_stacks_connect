import 'package:freezed_annotation/freezed_annotation.dart';

part 'signature.freezed.dart';
part 'signature.g.dart';

@freezed
class SignatureRequest with _$SignatureRequest {
  const factory SignatureRequest({
    required String message,
    required String domain,
    String? network,
  }) = _SignatureRequest;

  factory SignatureRequest.fromJson(Map<String, dynamic> json) =>
      _$SignatureRequestFromJson(json);
}
