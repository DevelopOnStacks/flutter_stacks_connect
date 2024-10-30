// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacksTransaction _$StacksTransactionFromJson(Map<String, dynamic> json) {
  return _StacksTransaction.fromJson(json);
}

/// @nodoc
mixin _$StacksTransaction {
  TransactionType get type => throw _privateConstructorUsedError;
  String? get contractAddress => throw _privateConstructorUsedError;
  String? get contractName => throw _privateConstructorUsedError;
  String? get functionName => throw _privateConstructorUsedError;
  List<dynamic>? get functionArgs => throw _privateConstructorUsedError;
  String? get recipient => throw _privateConstructorUsedError;
  @BigIntConverter()
  BigInt? get amount => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  @NetworkConfigConverter()
  NetworkConfig get network => throw _privateConstructorUsedError;
  int? get fee => throw _privateConstructorUsedError;
  List<PostCondition>? get postConditions => throw _privateConstructorUsedError;

  /// Serializes this StacksTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacksTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacksTransactionCopyWith<StacksTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacksTransactionCopyWith<$Res> {
  factory $StacksTransactionCopyWith(
          StacksTransaction value, $Res Function(StacksTransaction) then) =
      _$StacksTransactionCopyWithImpl<$Res, StacksTransaction>;
  @useResult
  $Res call(
      {TransactionType type,
      String? contractAddress,
      String? contractName,
      String? functionName,
      List<dynamic>? functionArgs,
      String? recipient,
      @BigIntConverter() BigInt? amount,
      String? memo,
      @NetworkConfigConverter() NetworkConfig network,
      int? fee,
      List<PostCondition>? postConditions});

  $NetworkConfigCopyWith<$Res> get network;
}

/// @nodoc
class _$StacksTransactionCopyWithImpl<$Res, $Val extends StacksTransaction>
    implements $StacksTransactionCopyWith<$Res> {
  _$StacksTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacksTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? contractAddress = freezed,
    Object? contractName = freezed,
    Object? functionName = freezed,
    Object? functionArgs = freezed,
    Object? recipient = freezed,
    Object? amount = freezed,
    Object? memo = freezed,
    Object? network = null,
    Object? fee = freezed,
    Object? postConditions = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      contractAddress: freezed == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contractName: freezed == contractName
          ? _value.contractName
          : contractName // ignore: cast_nullable_to_non_nullable
              as String?,
      functionName: freezed == functionName
          ? _value.functionName
          : functionName // ignore: cast_nullable_to_non_nullable
              as String?,
      functionArgs: freezed == functionArgs
          ? _value.functionArgs
          : functionArgs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as NetworkConfig,
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

  /// Create a copy of StacksTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkConfigCopyWith<$Res> get network {
    return $NetworkConfigCopyWith<$Res>(_value.network, (value) {
      return _then(_value.copyWith(network: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacksTransactionImplCopyWith<$Res>
    implements $StacksTransactionCopyWith<$Res> {
  factory _$$StacksTransactionImplCopyWith(_$StacksTransactionImpl value,
          $Res Function(_$StacksTransactionImpl) then) =
      __$$StacksTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionType type,
      String? contractAddress,
      String? contractName,
      String? functionName,
      List<dynamic>? functionArgs,
      String? recipient,
      @BigIntConverter() BigInt? amount,
      String? memo,
      @NetworkConfigConverter() NetworkConfig network,
      int? fee,
      List<PostCondition>? postConditions});

  @override
  $NetworkConfigCopyWith<$Res> get network;
}

/// @nodoc
class __$$StacksTransactionImplCopyWithImpl<$Res>
    extends _$StacksTransactionCopyWithImpl<$Res, _$StacksTransactionImpl>
    implements _$$StacksTransactionImplCopyWith<$Res> {
  __$$StacksTransactionImplCopyWithImpl(_$StacksTransactionImpl _value,
      $Res Function(_$StacksTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacksTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? contractAddress = freezed,
    Object? contractName = freezed,
    Object? functionName = freezed,
    Object? functionArgs = freezed,
    Object? recipient = freezed,
    Object? amount = freezed,
    Object? memo = freezed,
    Object? network = null,
    Object? fee = freezed,
    Object? postConditions = freezed,
  }) {
    return _then(_$StacksTransactionImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      contractAddress: freezed == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contractName: freezed == contractName
          ? _value.contractName
          : contractName // ignore: cast_nullable_to_non_nullable
              as String?,
      functionName: freezed == functionName
          ? _value.functionName
          : functionName // ignore: cast_nullable_to_non_nullable
              as String?,
      functionArgs: freezed == functionArgs
          ? _value._functionArgs
          : functionArgs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as NetworkConfig,
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
class _$StacksTransactionImpl implements _StacksTransaction {
  const _$StacksTransactionImpl(
      {required this.type,
      this.contractAddress,
      this.contractName,
      this.functionName,
      final List<dynamic>? functionArgs,
      this.recipient,
      @BigIntConverter() this.amount,
      this.memo,
      @NetworkConfigConverter() required this.network,
      this.fee,
      final List<PostCondition>? postConditions})
      : _functionArgs = functionArgs,
        _postConditions = postConditions;

  factory _$StacksTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacksTransactionImplFromJson(json);

  @override
  final TransactionType type;
  @override
  final String? contractAddress;
  @override
  final String? contractName;
  @override
  final String? functionName;
  final List<dynamic>? _functionArgs;
  @override
  List<dynamic>? get functionArgs {
    final value = _functionArgs;
    if (value == null) return null;
    if (_functionArgs is EqualUnmodifiableListView) return _functionArgs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? recipient;
  @override
  @BigIntConverter()
  final BigInt? amount;
  @override
  final String? memo;
  @override
  @NetworkConfigConverter()
  final NetworkConfig network;
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
    return 'StacksTransaction(type: $type, contractAddress: $contractAddress, contractName: $contractName, functionName: $functionName, functionArgs: $functionArgs, recipient: $recipient, amount: $amount, memo: $memo, network: $network, fee: $fee, postConditions: $postConditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacksTransactionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.contractName, contractName) ||
                other.contractName == contractName) &&
            (identical(other.functionName, functionName) ||
                other.functionName == functionName) &&
            const DeepCollectionEquality()
                .equals(other._functionArgs, _functionArgs) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            const DeepCollectionEquality()
                .equals(other._postConditions, _postConditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      contractAddress,
      contractName,
      functionName,
      const DeepCollectionEquality().hash(_functionArgs),
      recipient,
      amount,
      memo,
      network,
      fee,
      const DeepCollectionEquality().hash(_postConditions));

  /// Create a copy of StacksTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacksTransactionImplCopyWith<_$StacksTransactionImpl> get copyWith =>
      __$$StacksTransactionImplCopyWithImpl<_$StacksTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacksTransactionImplToJson(
      this,
    );
  }
}

abstract class _StacksTransaction implements StacksTransaction {
  const factory _StacksTransaction(
      {required final TransactionType type,
      final String? contractAddress,
      final String? contractName,
      final String? functionName,
      final List<dynamic>? functionArgs,
      final String? recipient,
      @BigIntConverter() final BigInt? amount,
      final String? memo,
      @NetworkConfigConverter() required final NetworkConfig network,
      final int? fee,
      final List<PostCondition>? postConditions}) = _$StacksTransactionImpl;

  factory _StacksTransaction.fromJson(Map<String, dynamic> json) =
      _$StacksTransactionImpl.fromJson;

  @override
  TransactionType get type;
  @override
  String? get contractAddress;
  @override
  String? get contractName;
  @override
  String? get functionName;
  @override
  List<dynamic>? get functionArgs;
  @override
  String? get recipient;
  @override
  @BigIntConverter()
  BigInt? get amount;
  @override
  String? get memo;
  @override
  @NetworkConfigConverter()
  NetworkConfig get network;
  @override
  int? get fee;
  @override
  List<PostCondition>? get postConditions;

  /// Create a copy of StacksTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacksTransactionImplCopyWith<_$StacksTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
