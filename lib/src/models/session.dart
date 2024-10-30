import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class StacksSession with _$StacksSession {
  const factory StacksSession({
    required String publicKey,
    String? profile,
    required String network,
    required Map<String, dynamic> appData,
  }) = _StacksSession;

  factory StacksSession.fromJson(Map<String, dynamic> json) =>
      _$StacksSessionFromJson(json);
}
