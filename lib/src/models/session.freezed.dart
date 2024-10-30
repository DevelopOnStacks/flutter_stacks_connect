// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacksSession _$StacksSessionFromJson(Map<String, dynamic> json) {
  return _StacksSession.fromJson(json);
}

/// @nodoc
mixin _$StacksSession {
  String get publicKey => throw _privateConstructorUsedError;
  String? get profile => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;
  Map<String, dynamic> get appData => throw _privateConstructorUsedError;

  /// Serializes this StacksSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacksSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacksSessionCopyWith<StacksSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacksSessionCopyWith<$Res> {
  factory $StacksSessionCopyWith(
          StacksSession value, $Res Function(StacksSession) then) =
      _$StacksSessionCopyWithImpl<$Res, StacksSession>;
  @useResult
  $Res call(
      {String publicKey,
      String? profile,
      String network,
      Map<String, dynamic> appData});
}

/// @nodoc
class _$StacksSessionCopyWithImpl<$Res, $Val extends StacksSession>
    implements $StacksSessionCopyWith<$Res> {
  _$StacksSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacksSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? profile = freezed,
    Object? network = null,
    Object? appData = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      appData: null == appData
          ? _value.appData
          : appData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacksSessionImplCopyWith<$Res>
    implements $StacksSessionCopyWith<$Res> {
  factory _$$StacksSessionImplCopyWith(
          _$StacksSessionImpl value, $Res Function(_$StacksSessionImpl) then) =
      __$$StacksSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String publicKey,
      String? profile,
      String network,
      Map<String, dynamic> appData});
}

/// @nodoc
class __$$StacksSessionImplCopyWithImpl<$Res>
    extends _$StacksSessionCopyWithImpl<$Res, _$StacksSessionImpl>
    implements _$$StacksSessionImplCopyWith<$Res> {
  __$$StacksSessionImplCopyWithImpl(
      _$StacksSessionImpl _value, $Res Function(_$StacksSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacksSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? profile = freezed,
    Object? network = null,
    Object? appData = null,
  }) {
    return _then(_$StacksSessionImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      appData: null == appData
          ? _value._appData
          : appData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacksSessionImpl implements _StacksSession {
  const _$StacksSessionImpl(
      {required this.publicKey,
      this.profile,
      required this.network,
      required final Map<String, dynamic> appData})
      : _appData = appData;

  factory _$StacksSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacksSessionImplFromJson(json);

  @override
  final String publicKey;
  @override
  final String? profile;
  @override
  final String network;
  final Map<String, dynamic> _appData;
  @override
  Map<String, dynamic> get appData {
    if (_appData is EqualUnmodifiableMapView) return _appData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appData);
  }

  @override
  String toString() {
    return 'StacksSession(publicKey: $publicKey, profile: $profile, network: $network, appData: $appData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacksSessionImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.network, network) || other.network == network) &&
            const DeepCollectionEquality().equals(other._appData, _appData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, profile, network,
      const DeepCollectionEquality().hash(_appData));

  /// Create a copy of StacksSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacksSessionImplCopyWith<_$StacksSessionImpl> get copyWith =>
      __$$StacksSessionImplCopyWithImpl<_$StacksSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacksSessionImplToJson(
      this,
    );
  }
}

abstract class _StacksSession implements StacksSession {
  const factory _StacksSession(
      {required final String publicKey,
      final String? profile,
      required final String network,
      required final Map<String, dynamic> appData}) = _$StacksSessionImpl;

  factory _StacksSession.fromJson(Map<String, dynamic> json) =
      _$StacksSessionImpl.fromJson;

  @override
  String get publicKey;
  @override
  String? get profile;
  @override
  String get network;
  @override
  Map<String, dynamic> get appData;

  /// Create a copy of StacksSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacksSessionImplCopyWith<_$StacksSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
