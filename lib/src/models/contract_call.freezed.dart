// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_call.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractCall _$ContractCallFromJson(Map<String, dynamic> json) {
  return _ContractCall.fromJson(json);
}

/// @nodoc
mixin _$ContractCall {
  String get contractAddress => throw _privateConstructorUsedError;
  String get contractName => throw _privateConstructorUsedError;
  String get functionName => throw _privateConstructorUsedError;
  List<ClarityValue> get functionArgs => throw _privateConstructorUsedError;
  String? get network => throw _privateConstructorUsedError;
  int? get fee => throw _privateConstructorUsedError;
  List<PostCondition>? get postConditions => throw _privateConstructorUsedError;

  /// Serializes this ContractCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractCallCopyWith<ContractCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractCallCopyWith<$Res> {
  factory $ContractCallCopyWith(
          ContractCall value, $Res Function(ContractCall) then) =
      _$ContractCallCopyWithImpl<$Res, ContractCall>;
  @useResult
  $Res call(
      {String contractAddress,
      String contractName,
      String functionName,
      List<ClarityValue> functionArgs,
      String? network,
      int? fee,
      List<PostCondition>? postConditions});
}

/// @nodoc
class _$ContractCallCopyWithImpl<$Res, $Val extends ContractCall>
    implements $ContractCallCopyWith<$Res> {
  _$ContractCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractAddress = null,
    Object? contractName = null,
    Object? functionName = null,
    Object? functionArgs = null,
    Object? network = freezed,
    Object? fee = freezed,
    Object? postConditions = freezed,
  }) {
    return _then(_value.copyWith(
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      contractName: null == contractName
          ? _value.contractName
          : contractName // ignore: cast_nullable_to_non_nullable
              as String,
      functionName: null == functionName
          ? _value.functionName
          : functionName // ignore: cast_nullable_to_non_nullable
              as String,
      functionArgs: null == functionArgs
          ? _value.functionArgs
          : functionArgs // ignore: cast_nullable_to_non_nullable
              as List<ClarityValue>,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      postConditions: freezed == postConditions
          ? _value.postConditions
          : postConditions // ignore: cast_nullable_to_non_nullable
              as List<PostCondition>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractCallImplCopyWith<$Res>
    implements $ContractCallCopyWith<$Res> {
  factory _$$ContractCallImplCopyWith(
          _$ContractCallImpl value, $Res Function(_$ContractCallImpl) then) =
      __$$ContractCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contractAddress,
      String contractName,
      String functionName,
      List<ClarityValue> functionArgs,
      String? network,
      int? fee,
      List<PostCondition>? postConditions});
}

/// @nodoc
class __$$ContractCallImplCopyWithImpl<$Res>
    extends _$ContractCallCopyWithImpl<$Res, _$ContractCallImpl>
    implements _$$ContractCallImplCopyWith<$Res> {
  __$$ContractCallImplCopyWithImpl(
      _$ContractCallImpl _value, $Res Function(_$ContractCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractAddress = null,
    Object? contractName = null,
    Object? functionName = null,
    Object? functionArgs = null,
    Object? network = freezed,
    Object? fee = freezed,
    Object? postConditions = freezed,
  }) {
    return _then(_$ContractCallImpl(
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      contractName: null == contractName
          ? _value.contractName
          : contractName // ignore: cast_nullable_to_non_nullable
              as String,
      functionName: null == functionName
          ? _value.functionName
          : functionName // ignore: cast_nullable_to_non_nullable
              as String,
      functionArgs: null == functionArgs
          ? _value._functionArgs
          : functionArgs // ignore: cast_nullable_to_non_nullable
              as List<ClarityValue>,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      postConditions: freezed == postConditions
          ? _value._postConditions
          : postConditions // ignore: cast_nullable_to_non_nullable
              as List<PostCondition>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractCallImpl implements _ContractCall {
  const _$ContractCallImpl(
      {required this.contractAddress,
      required this.contractName,
      required this.functionName,
      required final List<ClarityValue> functionArgs,
      this.network,
      this.fee,
      final List<PostCondition>? postConditions})
      : _functionArgs = functionArgs,
        _postConditions = postConditions;

  factory _$ContractCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractCallImplFromJson(json);

  @override
  final String contractAddress;
  @override
  final String contractName;
  @override
  final String functionName;
  final List<ClarityValue> _functionArgs;
  @override
  List<ClarityValue> get functionArgs {
    if (_functionArgs is EqualUnmodifiableListView) return _functionArgs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_functionArgs);
  }

  @override
  final String? network;
  @override
  final int? fee;
  final List<PostCondition>? _postConditions;
  @override
  List<PostCondition>? get postConditions {
    final value = _postConditions;
    if (value == null) return null;
    if (_postConditions is EqualUnmodifiableListView) return _postConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContractCall(contractAddress: $contractAddress, contractName: $contractName, functionName: $functionName, functionArgs: $functionArgs, network: $network, fee: $fee, postConditions: $postConditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractCallImpl &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.contractName, contractName) ||
                other.contractName == contractName) &&
            (identical(other.functionName, functionName) ||
                other.functionName == functionName) &&
            const DeepCollectionEquality()
                .equals(other._functionArgs, _functionArgs) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            const DeepCollectionEquality()
                .equals(other._postConditions, _postConditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contractAddress,
      contractName,
      functionName,
      const DeepCollectionEquality().hash(_functionArgs),
      network,
      fee,
      const DeepCollectionEquality().hash(_postConditions));

  /// Create a copy of ContractCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractCallImplCopyWith<_$ContractCallImpl> get copyWith =>
      __$$ContractCallImplCopyWithImpl<_$ContractCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractCallImplToJson(
      this,
    );
  }
}

abstract class _ContractCall implements ContractCall {
  const factory _ContractCall(
      {required final String contractAddress,
      required final String contractName,
      required final String functionName,
      required final List<ClarityValue> functionArgs,
      final String? network,
      final int? fee,
      final List<PostCondition>? postConditions}) = _$ContractCallImpl;

  factory _ContractCall.fromJson(Map<String, dynamic> json) =
      _$ContractCallImpl.fromJson;

  @override
  String get contractAddress;
  @override
  String get contractName;
  @override
  String get functionName;
  @override
  List<ClarityValue> get functionArgs;
  @override
  String? get network;
  @override
  int? get fee;
  @override
  List<PostCondition>? get postConditions;

  /// Create a copy of ContractCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractCallImplCopyWith<_$ContractCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
