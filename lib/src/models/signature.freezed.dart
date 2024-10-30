// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignatureRequest _$SignatureRequestFromJson(Map<String, dynamic> json) {
  return _SignatureRequest.fromJson(json);
}

/// @nodoc
mixin _$SignatureRequest {
  String get message => throw _privateConstructorUsedError;
  String get domain => throw _privateConstructorUsedError;
  String? get network => throw _privateConstructorUsedError;

  /// Serializes this SignatureRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignatureRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignatureRequestCopyWith<SignatureRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignatureRequestCopyWith<$Res> {
  factory $SignatureRequestCopyWith(
          SignatureRequest value, $Res Function(SignatureRequest) then) =
      _$SignatureRequestCopyWithImpl<$Res, SignatureRequest>;
  @useResult
  $Res call({String message, String domain, String? network});
}

/// @nodoc
class _$SignatureRequestCopyWithImpl<$Res, $Val extends SignatureRequest>
    implements $SignatureRequestCopyWith<$Res> {
  _$SignatureRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignatureRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? domain = null,
    Object? network = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignatureRequestImplCopyWith<$Res>
    implements $SignatureRequestCopyWith<$Res> {
  factory _$$SignatureRequestImplCopyWith(_$SignatureRequestImpl value,
          $Res Function(_$SignatureRequestImpl) then) =
      __$$SignatureRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String domain, String? network});
}

/// @nodoc
class __$$SignatureRequestImplCopyWithImpl<$Res>
    extends _$SignatureRequestCopyWithImpl<$Res, _$SignatureRequestImpl>
    implements _$$SignatureRequestImplCopyWith<$Res> {
  __$$SignatureRequestImplCopyWithImpl(_$SignatureRequestImpl _value,
      $Res Function(_$SignatureRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignatureRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? domain = null,
    Object? network = freezed,
  }) {
    return _then(_$SignatureRequestImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignatureRequestImpl implements _SignatureRequest {
  const _$SignatureRequestImpl(
      {required this.message, required this.domain, this.network});

  factory _$SignatureRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignatureRequestImplFromJson(json);

  @override
  final String message;
  @override
  final String domain;
  @override
  final String? network;

  @override
  String toString() {
    return 'SignatureRequest(message: $message, domain: $domain, network: $network)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignatureRequestImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.network, network) || other.network == network));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, domain, network);

  /// Create a copy of SignatureRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignatureRequestImplCopyWith<_$SignatureRequestImpl> get copyWith =>
      __$$SignatureRequestImplCopyWithImpl<_$SignatureRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignatureRequestImplToJson(
      this,
    );
  }
}

abstract class _SignatureRequest implements SignatureRequest {
  const factory _SignatureRequest(
      {required final String message,
      required final String domain,
      final String? network}) = _$SignatureRequestImpl;

  factory _SignatureRequest.fromJson(Map<String, dynamic> json) =
      _$SignatureRequestImpl.fromJson;

  @override
  String get message;
  @override
  String get domain;
  @override
  String? get network;

  /// Create a copy of SignatureRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignatureRequestImplCopyWith<_$SignatureRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
