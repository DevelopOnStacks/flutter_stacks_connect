// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bitcoin_tx.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BitcoinTransaction _$BitcoinTransactionFromJson(Map<String, dynamic> json) {
  return _BitcoinTransaction.fromJson(json);
}

/// @nodoc
mixin _$BitcoinTransaction {
  String get hex => throw _privateConstructorUsedError;
  List<int> get signAtIndex => throw _privateConstructorUsedError;
  List<SignatureHash>? get allowedSighash => throw _privateConstructorUsedError;

  /// Serializes this BitcoinTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BitcoinTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BitcoinTransactionCopyWith<BitcoinTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitcoinTransactionCopyWith<$Res> {
  factory $BitcoinTransactionCopyWith(
          BitcoinTransaction value, $Res Function(BitcoinTransaction) then) =
      _$BitcoinTransactionCopyWithImpl<$Res, BitcoinTransaction>;
  @useResult
  $Res call(
      {String hex, List<int> signAtIndex, List<SignatureHash>? allowedSighash});
}

/// @nodoc
class _$BitcoinTransactionCopyWithImpl<$Res, $Val extends BitcoinTransaction>
    implements $BitcoinTransactionCopyWith<$Res> {
  _$BitcoinTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BitcoinTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hex = null,
    Object? signAtIndex = null,
    Object? allowedSighash = freezed,
  }) {
    return _then(_value.copyWith(
      hex: null == hex
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String,
      signAtIndex: null == signAtIndex
          ? _value.signAtIndex
          : signAtIndex // ignore: cast_nullable_to_non_nullable
              as List<int>,
      allowedSighash: freezed == allowedSighash
          ? _value.allowedSighash
          : allowedSighash // ignore: cast_nullable_to_non_nullable
              as List<SignatureHash>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BitcoinTransactionImplCopyWith<$Res>
    implements $BitcoinTransactionCopyWith<$Res> {
  factory _$$BitcoinTransactionImplCopyWith(_$BitcoinTransactionImpl value,
          $Res Function(_$BitcoinTransactionImpl) then) =
      __$$BitcoinTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hex, List<int> signAtIndex, List<SignatureHash>? allowedSighash});
}

/// @nodoc
class __$$BitcoinTransactionImplCopyWithImpl<$Res>
    extends _$BitcoinTransactionCopyWithImpl<$Res, _$BitcoinTransactionImpl>
    implements _$$BitcoinTransactionImplCopyWith<$Res> {
  __$$BitcoinTransactionImplCopyWithImpl(_$BitcoinTransactionImpl _value,
      $Res Function(_$BitcoinTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BitcoinTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hex = null,
    Object? signAtIndex = null,
    Object? allowedSighash = freezed,
  }) {
    return _then(_$BitcoinTransactionImpl(
      hex: null == hex
          ? _value.hex
          : hex // ignore: cast_nullable_to_non_nullable
              as String,
      signAtIndex: null == signAtIndex
          ? _value._signAtIndex
          : signAtIndex // ignore: cast_nullable_to_non_nullable
              as List<int>,
      allowedSighash: freezed == allowedSighash
          ? _value._allowedSighash
          : allowedSighash // ignore: cast_nullable_to_non_nullable
              as List<SignatureHash>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BitcoinTransactionImpl implements _BitcoinTransaction {
  const _$BitcoinTransactionImpl(
      {required this.hex,
      required final List<int> signAtIndex,
      final List<SignatureHash>? allowedSighash})
      : _signAtIndex = signAtIndex,
        _allowedSighash = allowedSighash;

  factory _$BitcoinTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BitcoinTransactionImplFromJson(json);

  @override
  final String hex;
  final List<int> _signAtIndex;
  @override
  List<int> get signAtIndex {
    if (_signAtIndex is EqualUnmodifiableListView) return _signAtIndex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signAtIndex);
  }

  final List<SignatureHash>? _allowedSighash;
  @override
  List<SignatureHash>? get allowedSighash {
    final value = _allowedSighash;
    if (value == null) return null;
    if (_allowedSighash is EqualUnmodifiableListView) return _allowedSighash;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BitcoinTransaction(hex: $hex, signAtIndex: $signAtIndex, allowedSighash: $allowedSighash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BitcoinTransactionImpl &&
            (identical(other.hex, hex) || other.hex == hex) &&
            const DeepCollectionEquality()
                .equals(other._signAtIndex, _signAtIndex) &&
            const DeepCollectionEquality()
                .equals(other._allowedSighash, _allowedSighash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hex,
      const DeepCollectionEquality().hash(_signAtIndex),
      const DeepCollectionEquality().hash(_allowedSighash));

  /// Create a copy of BitcoinTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BitcoinTransactionImplCopyWith<_$BitcoinTransactionImpl> get copyWith =>
      __$$BitcoinTransactionImplCopyWithImpl<_$BitcoinTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BitcoinTransactionImplToJson(
      this,
    );
  }
}

abstract class _BitcoinTransaction implements BitcoinTransaction {
  const factory _BitcoinTransaction(
      {required final String hex,
      required final List<int> signAtIndex,
      final List<SignatureHash>? allowedSighash}) = _$BitcoinTransactionImpl;

  factory _BitcoinTransaction.fromJson(Map<String, dynamic> json) =
      _$BitcoinTransactionImpl.fromJson;

  @override
  String get hex;
  @override
  List<int> get signAtIndex;
  @override
  List<SignatureHash>? get allowedSighash;

  /// Create a copy of BitcoinTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BitcoinTransactionImplCopyWith<_$BitcoinTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
