// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clarity_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClarityValue _$ClarityValueFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'none':
      return NoneCV.fromJson(json);
    case 'uint':
      return UIntCV.fromJson(json);
    case 'int':
      return IntCV.fromJson(json);
    case 'bool':
      return BoolCV.fromJson(json);
    case 'buffer':
      return BufferCV.fromJson(json);
    case 'string':
      return StringCV.fromJson(json);
    case 'list':
      return ListCV.fromJson(json);
    case 'tuple':
      return TupleCV.fromJson(json);
    case 'principal':
      return PrincipalCV.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ClarityValue',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ClarityValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(BigInt value) uint,
    required TResult Function(BigInt value) int,
    required TResult Function(bool value) bool,
    required TResult Function(List<int> buffer) buffer,
    required TResult Function(String content) string,
    required TResult Function(List<ClarityValue> values) list,
    required TResult Function(Map<String, ClarityValue> data) tuple,
    required TResult Function(String address) principal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(BigInt value)? uint,
    TResult? Function(BigInt value)? int,
    TResult? Function(bool value)? bool,
    TResult? Function(List<int> buffer)? buffer,
    TResult? Function(String content)? string,
    TResult? Function(List<ClarityValue> values)? list,
    TResult? Function(Map<String, ClarityValue> data)? tuple,
    TResult? Function(String address)? principal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(BigInt value)? uint,
    TResult Function(BigInt value)? int,
    TResult Function(bool value)? bool,
    TResult Function(List<int> buffer)? buffer,
    TResult Function(String content)? string,
    TResult Function(List<ClarityValue> values)? list,
    TResult Function(Map<String, ClarityValue> data)? tuple,
    TResult Function(String address)? principal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneCV value) none,
    required TResult Function(UIntCV value) uint,
    required TResult Function(IntCV value) int,
    required TResult Function(BoolCV value) bool,
    required TResult Function(BufferCV value) buffer,
    required TResult Function(StringCV value) string,
    required TResult Function(ListCV value) list,
    required TResult Function(TupleCV value) tuple,
    required TResult Function(PrincipalCV value) principal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneCV value)? none,
    TResult? Function(UIntCV value)? uint,
    TResult? Function(IntCV value)? int,
    TResult? Function(BoolCV value)? bool,
    TResult? Function(BufferCV value)? buffer,
    TResult? Function(StringCV value)? string,
    TResult? Function(ListCV value)? list,
    TResult? Function(TupleCV value)? tuple,
    TResult? Function(PrincipalCV value)? principal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneCV value)? none,
    TResult Function(UIntCV value)? uint,
    TResult Function(IntCV value)? int,
    TResult Function(BoolCV value)? bool,
    TResult Function(BufferCV value)? buffer,
    TResult Function(StringCV value)? string,
    TResult Function(ListCV value)? list,
    TResult Function(TupleCV value)? tuple,
    TResult Function(PrincipalCV value)? principal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ClarityValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClarityValueCopyWith<$Res> {
  factory $ClarityValueCopyWith(
          ClarityValue value, $Res Function(ClarityValue) then) =
      _$ClarityValueCopyWithImpl<$Res, ClarityValue>;
}

/// @nodoc
class _$ClarityValueCopyWithImpl<$Res, $Val extends ClarityValue>
    implements $ClarityValueCopyWith<$Res> {
  _$ClarityValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoneCVImplCopyWith<$Res> {
  factory _$$NoneCVImplCopyWith(
          _$NoneCVImpl value, $Res Function(_$NoneCVImpl) then) =
      __$$NoneCVImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneCVImplCopyWithImpl<$Res>
    extends _$ClarityValueCopyWithImpl<$Res, _$NoneCVImpl>
    implements _$$NoneCVImplCopyWith<$Res> {
  __$$NoneCVImplCopyWithImpl(
      _$NoneCVImpl _value, $Res Function(_$NoneCVImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NoneCVImpl implements NoneCV {
  const _$NoneCVImpl({final String? $type}) : $type = $type ?? 'none';

  factory _$NoneCVImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoneCVImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClarityValue.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneCVImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(BigInt value) uint,
    required TResult Function(BigInt value) int,
    required TResult Function(bool value) bool,
    required TResult Function(List<int> buffer) buffer,
    required TResult Function(String content) string,
    required TResult Function(List<ClarityValue> values) list,
    required TResult Function(Map<String, ClarityValue> data) tuple,
    required TResult Function(String address) principal,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(BigInt value)? uint,
    TResult? Function(BigInt value)? int,
    TResult? Function(bool value)? bool,
    TResult? Function(List<int> buffer)? buffer,
    TResult? Function(String content)? string,
    TResult? Function(List<ClarityValue> values)? list,
    TResult? Function(Map<String, ClarityValue> data)? tuple,
    TResult? Function(String address)? principal,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(BigInt value)? uint,
    TResult Function(BigInt value)? int,
    TResult Function(bool value)? bool,
    TResult Function(List<int> buffer)? buffer,
    TResult Function(String content)? string,
    TResult Function(List<ClarityValue> values)? list,
    TResult Function(Map<String, ClarityValue> data)? tuple,
    TResult Function(String address)? principal,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneCV value) none,
    required TResult Function(UIntCV value) uint,
    required TResult Function(IntCV value) int,
    required TResult Function(BoolCV value) bool,
    required TResult Function(BufferCV value) buffer,
    required TResult Function(StringCV value) string,
    required TResult Function(ListCV value) list,
    required TResult Function(TupleCV value) tuple,
    required TResult Function(PrincipalCV value) principal,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneCV value)? none,
    TResult? Function(UIntCV value)? uint,
    TResult? Function(IntCV value)? int,
    TResult? Function(BoolCV value)? bool,
    TResult? Function(BufferCV value)? buffer,
    TResult? Function(StringCV value)? string,
    TResult? Function(ListCV value)? list,
    TResult? Function(TupleCV value)? tuple,
    TResult? Function(PrincipalCV value)? principal,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneCV value)? none,
    TResult Function(UIntCV value)? uint,
    TResult Function(IntCV value)? int,
    TResult Function(BoolCV value)? bool,
    TResult Function(BufferCV value)? buffer,
    TResult Function(StringCV value)? string,
    TResult Function(ListCV value)? list,
    TResult Function(TupleCV value)? tuple,
    TResult Function(PrincipalCV value)? principal,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoneCVImplToJson(
      this,
    );
  }
}

abstract class NoneCV implements ClarityValue {
  const factory NoneCV() = _$NoneCVImpl;

  factory NoneCV.fromJson(Map<String, dynamic> json) = _$NoneCVImpl.fromJson;
}

/// @nodoc
abstract class _$$UIntCVImplCopyWith<$Res> {
  factory _$$UIntCVImplCopyWith(
          _$UIntCVImpl value, $Res Function(_$UIntCVImpl) then) =
      __$$UIntCVImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt value});
}

/// @nodoc
class __$$UIntCVImplCopyWithImpl<$Res>
    extends _$ClarityValueCopyWithImpl<$Res, _$UIntCVImpl>
    implements _$$UIntCVImplCopyWith<$Res> {
  __$$UIntCVImplCopyWithImpl(
      _$UIntCVImpl _value, $Res Function(_$UIntCVImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UIntCVImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UIntCVImpl implements UIntCV {
  const _$UIntCVImpl(this.value, {final String? $type})
      : $type = $type ?? 'uint';

  factory _$UIntCVImpl.fromJson(Map<String, dynamic> json) =>
      _$$UIntCVImplFromJson(json);

  @override
  final BigInt value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClarityValue.uint(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIntCVImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UIntCVImplCopyWith<_$UIntCVImpl> get copyWith =>
      __$$UIntCVImplCopyWithImpl<_$UIntCVImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(BigInt value) uint,
    required TResult Function(BigInt value) int,
    required TResult Function(bool value) bool,
    required TResult Function(List<int> buffer) buffer,
    required TResult Function(String content) string,
    required TResult Function(List<ClarityValue> values) list,
    required TResult Function(Map<String, ClarityValue> data) tuple,
    required TResult Function(String address) principal,
  }) {
    return uint(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(BigInt value)? uint,
    TResult? Function(BigInt value)? int,
    TResult? Function(bool value)? bool,
    TResult? Function(List<int> buffer)? buffer,
    TResult? Function(String content)? string,
    TResult? Function(List<ClarityValue> values)? list,
    TResult? Function(Map<String, ClarityValue> data)? tuple,
    TResult? Function(String address)? principal,
  }) {
    return uint?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(BigInt value)? uint,
    TResult Function(BigInt value)? int,
    TResult Function(bool value)? bool,
    TResult Function(List<int> buffer)? buffer,
    TResult Function(String content)? string,
    TResult Function(List<ClarityValue> values)? list,
    TResult Function(Map<String, ClarityValue> data)? tuple,
    TResult Function(String address)? principal,
    required TResult orElse(),
  }) {
    if (uint != null) {
      return uint(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneCV value) none,
    required TResult Function(UIntCV value) uint,
    required TResult Function(IntCV value) int,
    required TResult Function(BoolCV value) bool,
    required TResult Function(BufferCV value) buffer,
    required TResult Function(StringCV value) string,
    required TResult Function(ListCV value) list,
    required TResult Function(TupleCV value) tuple,
    required TResult Function(PrincipalCV value) principal,
  }) {
    return uint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneCV value)? none,
    TResult? Function(UIntCV value)? uint,
    TResult? Function(IntCV value)? int,
    TResult? Function(BoolCV value)? bool,
    TResult? Function(BufferCV value)? buffer,
    TResult? Function(StringCV value)? string,
    TResult? Function(ListCV value)? list,
    TResult? Function(TupleCV value)? tuple,
    TResult? Function(PrincipalCV value)? principal,
  }) {
    return uint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneCV value)? none,
    TResult Function(UIntCV value)? uint,
    TResult Function(IntCV value)? int,
    TResult Function(BoolCV value)? bool,
    TResult Function(BufferCV value)? buffer,
    TResult Function(StringCV value)? string,
    TResult Function(ListCV value)? list,
    TResult Function(TupleCV value)? tuple,
    TResult Function(PrincipalCV value)? principal,
    required TResult orElse(),
  }) {
    if (uint != null) {
      return uint(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UIntCVImplToJson(
      this,
    );
  }
}

abstract class UIntCV implements ClarityValue {
  const factory UIntCV(final BigInt value) = _$UIntCVImpl;

  factory UIntCV.fromJson(Map<String, dynamic> json) = _$UIntCVImpl.fromJson;

  BigInt get value;

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UIntCVImplCopyWith<_$UIntCVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IntCVImplCopyWith<$Res> {
  factory _$$IntCVImplCopyWith(
          _$IntCVImpl value, $Res Function(_$IntCVImpl) then) =
      __$$IntCVImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt value});
}

/// @nodoc
class __$$IntCVImplCopyWithImpl<$Res>
    extends _$ClarityValueCopyWithImpl<$Res, _$IntCVImpl>
    implements _$$IntCVImplCopyWith<$Res> {
  __$$IntCVImplCopyWithImpl(
      _$IntCVImpl _value, $Res Function(_$IntCVImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$IntCVImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntCVImpl implements IntCV {
  const _$IntCVImpl(this.value, {final String? $type}) : $type = $type ?? 'int';

  factory _$IntCVImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntCVImplFromJson(json);

  @override
  final BigInt value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClarityValue.int(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntCVImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntCVImplCopyWith<_$IntCVImpl> get copyWith =>
      __$$IntCVImplCopyWithImpl<_$IntCVImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(BigInt value) uint,
    required TResult Function(BigInt value) int,
    required TResult Function(bool value) bool,
    required TResult Function(List<int> buffer) buffer,
    required TResult Function(String content) string,
    required TResult Function(List<ClarityValue> values) list,
    required TResult Function(Map<String, ClarityValue> data) tuple,
    required TResult Function(String address) principal,
  }) {
    return int(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(BigInt value)? uint,
    TResult? Function(BigInt value)? int,
    TResult? Function(bool value)? bool,
    TResult? Function(List<int> buffer)? buffer,
    TResult? Function(String content)? string,
    TResult? Function(List<ClarityValue> values)? list,
    TResult? Function(Map<String, ClarityValue> data)? tuple,
    TResult? Function(String address)? principal,
  }) {
    return int?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(BigInt value)? uint,
    TResult Function(BigInt value)? int,
    TResult Function(bool value)? bool,
    TResult Function(List<int> buffer)? buffer,
    TResult Function(String content)? string,
    TResult Function(List<ClarityValue> values)? list,
    TResult Function(Map<String, ClarityValue> data)? tuple,
    TResult Function(String address)? principal,
    required TResult orElse(),
  }) {
    if (int != null) {
      return int(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneCV value) none,
    required TResult Function(UIntCV value) uint,
    required TResult Function(IntCV value) int,
    required TResult Function(BoolCV value) bool,
    required TResult Function(BufferCV value) buffer,
    required TResult Function(StringCV value) string,
    required TResult Function(ListCV value) list,
    required TResult Function(TupleCV value) tuple,
    required TResult Function(PrincipalCV value) principal,
  }) {
    return int(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneCV value)? none,
    TResult? Function(UIntCV value)? uint,
    TResult? Function(IntCV value)? int,
    TResult? Function(BoolCV value)? bool,
    TResult? Function(BufferCV value)? buffer,
    TResult? Function(StringCV value)? string,
    TResult? Function(ListCV value)? list,
    TResult? Function(TupleCV value)? tuple,
    TResult? Function(PrincipalCV value)? principal,
  }) {
    return int?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneCV value)? none,
    TResult Function(UIntCV value)? uint,
    TResult Function(IntCV value)? int,
    TResult Function(BoolCV value)? bool,
    TResult Function(BufferCV value)? buffer,
    TResult Function(StringCV value)? string,
    TResult Function(ListCV value)? list,
    TResult Function(TupleCV value)? tuple,
    TResult Function(PrincipalCV value)? principal,
    required TResult orElse(),
  }) {
    if (int != null) {
      return int(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IntCVImplToJson(
      this,
    );
  }
}

abstract class IntCV implements ClarityValue {
  const factory IntCV(final BigInt value) = _$IntCVImpl;

  factory IntCV.fromJson(Map<String, dynamic> json) = _$IntCVImpl.fromJson;

  BigInt get value;

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntCVImplCopyWith<_$IntCVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoolCVImplCopyWith<$Res> {
  factory _$$BoolCVImplCopyWith(
          _$BoolCVImpl value, $Res Function(_$BoolCVImpl) then) =
      __$$BoolCVImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$BoolCVImplCopyWithImpl<$Res>
    extends _$ClarityValueCopyWithImpl<$Res, _$BoolCVImpl>
    implements _$$BoolCVImplCopyWith<$Res> {
  __$$BoolCVImplCopyWithImpl(
      _$BoolCVImpl _value, $Res Function(_$BoolCVImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$BoolCVImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoolCVImpl implements BoolCV {
  const _$BoolCVImpl(this.value, {final String? $type})
      : $type = $type ?? 'bool';

  factory _$BoolCVImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoolCVImplFromJson(json);

  @override
  final bool value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClarityValue.bool(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoolCVImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoolCVImplCopyWith<_$BoolCVImpl> get copyWith =>
      __$$BoolCVImplCopyWithImpl<_$BoolCVImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(BigInt value) uint,
    required TResult Function(BigInt value) int,
    required TResult Function(bool value) bool,
    required TResult Function(List<int> buffer) buffer,
    required TResult Function(String content) string,
    required TResult Function(List<ClarityValue> values) list,
    required TResult Function(Map<String, ClarityValue> data) tuple,
    required TResult Function(String address) principal,
  }) {
    return bool(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(BigInt value)? uint,
    TResult? Function(BigInt value)? int,
    TResult? Function(bool value)? bool,
    TResult? Function(List<int> buffer)? buffer,
    TResult? Function(String content)? string,
    TResult? Function(List<ClarityValue> values)? list,
    TResult? Function(Map<String, ClarityValue> data)? tuple,
    TResult? Function(String address)? principal,
  }) {
    return bool?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(BigInt value)? uint,
    TResult Function(BigInt value)? int,
    TResult Function(bool value)? bool,
    TResult Function(List<int> buffer)? buffer,
    TResult Function(String content)? string,
    TResult Function(List<ClarityValue> values)? list,
    TResult Function(Map<String, ClarityValue> data)? tuple,
    TResult Function(String address)? principal,
    required TResult orElse(),
  }) {
    if (bool != null) {
      return bool(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneCV value) none,
    required TResult Function(UIntCV value) uint,
    required TResult Function(IntCV value) int,
    required TResult Function(BoolCV value) bool,
    required TResult Function(BufferCV value) buffer,
    required TResult Function(StringCV value) string,
    required TResult Function(ListCV value) list,
    required TResult Function(TupleCV value) tuple,
    required TResult Function(PrincipalCV value) principal,
  }) {
    return bool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneCV value)? none,
    TResult? Function(UIntCV value)? uint,
    TResult? Function(IntCV value)? int,
    TResult? Function(BoolCV value)? bool,
    TResult? Function(BufferCV value)? buffer,
    TResult? Function(StringCV value)? string,
    TResult? Function(ListCV value)? list,
    TResult? Function(TupleCV value)? tuple,
    TResult? Function(PrincipalCV value)? principal,
  }) {
    return bool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneCV value)? none,
    TResult Function(UIntCV value)? uint,
    TResult Function(IntCV value)? int,
    TResult Function(BoolCV value)? bool,
    TResult Function(BufferCV value)? buffer,
    TResult Function(StringCV value)? string,
    TResult Function(ListCV value)? list,
    TResult Function(TupleCV value)? tuple,
    TResult Function(PrincipalCV value)? principal,
    required TResult orElse(),
  }) {
    if (bool != null) {
      return bool(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BoolCVImplToJson(
      this,
    );
  }
}

abstract class BoolCV implements ClarityValue {
  const factory BoolCV(final bool value) = _$BoolCVImpl;

  factory BoolCV.fromJson(Map<String, dynamic> json) = _$BoolCVImpl.fromJson;

  bool get value;

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoolCVImplCopyWith<_$BoolCVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BufferCVImplCopyWith<$Res> {
  factory _$$BufferCVImplCopyWith(
          _$BufferCVImpl value, $Res Function(_$BufferCVImpl) then) =
      __$$BufferCVImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> buffer});
}

/// @nodoc
class __$$BufferCVImplCopyWithImpl<$Res>
    extends _$ClarityValueCopyWithImpl<$Res, _$BufferCVImpl>
    implements _$$BufferCVImplCopyWith<$Res> {
  __$$BufferCVImplCopyWithImpl(
      _$BufferCVImpl _value, $Res Function(_$BufferCVImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffer = null,
  }) {
    return _then(_$BufferCVImpl(
      null == buffer
          ? _value._buffer
          : buffer // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BufferCVImpl implements BufferCV {
  const _$BufferCVImpl(final List<int> buffer, {final String? $type})
      : _buffer = buffer,
        $type = $type ?? 'buffer';

  factory _$BufferCVImpl.fromJson(Map<String, dynamic> json) =>
      _$$BufferCVImplFromJson(json);

  final List<int> _buffer;
  @override
  List<int> get buffer {
    if (_buffer is EqualUnmodifiableListView) return _buffer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buffer);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClarityValue.buffer(buffer: $buffer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BufferCVImpl &&
            const DeepCollectionEquality().equals(other._buffer, _buffer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_buffer));

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BufferCVImplCopyWith<_$BufferCVImpl> get copyWith =>
      __$$BufferCVImplCopyWithImpl<_$BufferCVImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(BigInt value) uint,
    required TResult Function(BigInt value) int,
    required TResult Function(bool value) bool,
    required TResult Function(List<int> buffer) buffer,
    required TResult Function(String content) string,
    required TResult Function(List<ClarityValue> values) list,
    required TResult Function(Map<String, ClarityValue> data) tuple,
    required TResult Function(String address) principal,
  }) {
    return buffer(this.buffer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(BigInt value)? uint,
    TResult? Function(BigInt value)? int,
    TResult? Function(bool value)? bool,
    TResult? Function(List<int> buffer)? buffer,
    TResult? Function(String content)? string,
    TResult? Function(List<ClarityValue> values)? list,
    TResult? Function(Map<String, ClarityValue> data)? tuple,
    TResult? Function(String address)? principal,
  }) {
    return buffer?.call(this.buffer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(BigInt value)? uint,
    TResult Function(BigInt value)? int,
    TResult Function(bool value)? bool,
    TResult Function(List<int> buffer)? buffer,
    TResult Function(String content)? string,
    TResult Function(List<ClarityValue> values)? list,
    TResult Function(Map<String, ClarityValue> data)? tuple,
    TResult Function(String address)? principal,
    required TResult orElse(),
  }) {
    if (buffer != null) {
      return buffer(this.buffer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneCV value) none,
    required TResult Function(UIntCV value) uint,
    required TResult Function(IntCV value) int,
    required TResult Function(BoolCV value) bool,
    required TResult Function(BufferCV value) buffer,
    required TResult Function(StringCV value) string,
    required TResult Function(ListCV value) list,
    required TResult Function(TupleCV value) tuple,
    required TResult Function(PrincipalCV value) principal,
  }) {
    return buffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneCV value)? none,
    TResult? Function(UIntCV value)? uint,
    TResult? Function(IntCV value)? int,
    TResult? Function(BoolCV value)? bool,
    TResult? Function(BufferCV value)? buffer,
    TResult? Function(StringCV value)? string,
    TResult? Function(ListCV value)? list,
    TResult? Function(TupleCV value)? tuple,
    TResult? Function(PrincipalCV value)? principal,
  }) {
    return buffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneCV value)? none,
    TResult Function(UIntCV value)? uint,
    TResult Function(IntCV value)? int,
    TResult Function(BoolCV value)? bool,
    TResult Function(BufferCV value)? buffer,
    TResult Function(StringCV value)? string,
    TResult Function(ListCV value)? list,
    TResult Function(TupleCV value)? tuple,
    TResult Function(PrincipalCV value)? principal,
    required TResult orElse(),
  }) {
    if (buffer != null) {
      return buffer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BufferCVImplToJson(
      this,
    );
  }
}

abstract class BufferCV implements ClarityValue {
  const factory BufferCV(final List<int> buffer) = _$BufferCVImpl;

  factory BufferCV.fromJson(Map<String, dynamic> json) =
      _$BufferCVImpl.fromJson;

  List<int> get buffer;

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BufferCVImplCopyWith<_$BufferCVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StringCVImplCopyWith<$Res> {
  factory _$$StringCVImplCopyWith(
          _$StringCVImpl value, $Res Function(_$StringCVImpl) then) =
      __$$StringCVImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$StringCVImplCopyWithImpl<$Res>
    extends _$ClarityValueCopyWithImpl<$Res, _$StringCVImpl>
    implements _$$StringCVImplCopyWith<$Res> {
  __$$StringCVImplCopyWithImpl(
      _$StringCVImpl _value, $Res Function(_$StringCVImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$StringCVImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringCVImpl implements StringCV {
  const _$StringCVImpl(this.content, {final String? $type})
      : $type = $type ?? 'string';

  factory _$StringCVImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringCVImplFromJson(json);

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClarityValue.string(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringCVImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringCVImplCopyWith<_$StringCVImpl> get copyWith =>
      __$$StringCVImplCopyWithImpl<_$StringCVImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(BigInt value) uint,
    required TResult Function(BigInt value) int,
    required TResult Function(bool value) bool,
    required TResult Function(List<int> buffer) buffer,
    required TResult Function(String content) string,
    required TResult Function(List<ClarityValue> values) list,
    required TResult Function(Map<String, ClarityValue> data) tuple,
    required TResult Function(String address) principal,
  }) {
    return string(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(BigInt value)? uint,
    TResult? Function(BigInt value)? int,
    TResult? Function(bool value)? bool,
    TResult? Function(List<int> buffer)? buffer,
    TResult? Function(String content)? string,
    TResult? Function(List<ClarityValue> values)? list,
    TResult? Function(Map<String, ClarityValue> data)? tuple,
    TResult? Function(String address)? principal,
  }) {
    return string?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(BigInt value)? uint,
    TResult Function(BigInt value)? int,
    TResult Function(bool value)? bool,
    TResult Function(List<int> buffer)? buffer,
    TResult Function(String content)? string,
    TResult Function(List<ClarityValue> values)? list,
    TResult Function(Map<String, ClarityValue> data)? tuple,
    TResult Function(String address)? principal,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneCV value) none,
    required TResult Function(UIntCV value) uint,
    required TResult Function(IntCV value) int,
    required TResult Function(BoolCV value) bool,
    required TResult Function(BufferCV value) buffer,
    required TResult Function(StringCV value) string,
    required TResult Function(ListCV value) list,
    required TResult Function(TupleCV value) tuple,
    required TResult Function(PrincipalCV value) principal,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneCV value)? none,
    TResult? Function(UIntCV value)? uint,
    TResult? Function(IntCV value)? int,
    TResult? Function(BoolCV value)? bool,
    TResult? Function(BufferCV value)? buffer,
    TResult? Function(StringCV value)? string,
    TResult? Function(ListCV value)? list,
    TResult? Function(TupleCV value)? tuple,
    TResult? Function(PrincipalCV value)? principal,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneCV value)? none,
    TResult Function(UIntCV value)? uint,
    TResult Function(IntCV value)? int,
    TResult Function(BoolCV value)? bool,
    TResult Function(BufferCV value)? buffer,
    TResult Function(StringCV value)? string,
    TResult Function(ListCV value)? list,
    TResult Function(TupleCV value)? tuple,
    TResult Function(PrincipalCV value)? principal,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StringCVImplToJson(
      this,
    );
  }
}

abstract class StringCV implements ClarityValue {
  const factory StringCV(final String content) = _$StringCVImpl;

  factory StringCV.fromJson(Map<String, dynamic> json) =
      _$StringCVImpl.fromJson;

  String get content;

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringCVImplCopyWith<_$StringCVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListCVImplCopyWith<$Res> {
  factory _$$ListCVImplCopyWith(
          _$ListCVImpl value, $Res Function(_$ListCVImpl) then) =
      __$$ListCVImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClarityValue> values});
}

/// @nodoc
class __$$ListCVImplCopyWithImpl<$Res>
    extends _$ClarityValueCopyWithImpl<$Res, _$ListCVImpl>
    implements _$$ListCVImplCopyWith<$Res> {
  __$$ListCVImplCopyWithImpl(
      _$ListCVImpl _value, $Res Function(_$ListCVImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$ListCVImpl(
      null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ClarityValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListCVImpl implements ListCV {
  const _$ListCVImpl(final List<ClarityValue> values, {final String? $type})
      : _values = values,
        $type = $type ?? 'list';

  factory _$ListCVImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListCVImplFromJson(json);

  final List<ClarityValue> _values;
  @override
  List<ClarityValue> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClarityValue.list(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListCVImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListCVImplCopyWith<_$ListCVImpl> get copyWith =>
      __$$ListCVImplCopyWithImpl<_$ListCVImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(BigInt value) uint,
    required TResult Function(BigInt value) int,
    required TResult Function(bool value) bool,
    required TResult Function(List<int> buffer) buffer,
    required TResult Function(String content) string,
    required TResult Function(List<ClarityValue> values) list,
    required TResult Function(Map<String, ClarityValue> data) tuple,
    required TResult Function(String address) principal,
  }) {
    return list(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(BigInt value)? uint,
    TResult? Function(BigInt value)? int,
    TResult? Function(bool value)? bool,
    TResult? Function(List<int> buffer)? buffer,
    TResult? Function(String content)? string,
    TResult? Function(List<ClarityValue> values)? list,
    TResult? Function(Map<String, ClarityValue> data)? tuple,
    TResult? Function(String address)? principal,
  }) {
    return list?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(BigInt value)? uint,
    TResult Function(BigInt value)? int,
    TResult Function(bool value)? bool,
    TResult Function(List<int> buffer)? buffer,
    TResult Function(String content)? string,
    TResult Function(List<ClarityValue> values)? list,
    TResult Function(Map<String, ClarityValue> data)? tuple,
    TResult Function(String address)? principal,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneCV value) none,
    required TResult Function(UIntCV value) uint,
    required TResult Function(IntCV value) int,
    required TResult Function(BoolCV value) bool,
    required TResult Function(BufferCV value) buffer,
    required TResult Function(StringCV value) string,
    required TResult Function(ListCV value) list,
    required TResult Function(TupleCV value) tuple,
    required TResult Function(PrincipalCV value) principal,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneCV value)? none,
    TResult? Function(UIntCV value)? uint,
    TResult? Function(IntCV value)? int,
    TResult? Function(BoolCV value)? bool,
    TResult? Function(BufferCV value)? buffer,
    TResult? Function(StringCV value)? string,
    TResult? Function(ListCV value)? list,
    TResult? Function(TupleCV value)? tuple,
    TResult? Function(PrincipalCV value)? principal,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneCV value)? none,
    TResult Function(UIntCV value)? uint,
    TResult Function(IntCV value)? int,
    TResult Function(BoolCV value)? bool,
    TResult Function(BufferCV value)? buffer,
    TResult Function(StringCV value)? string,
    TResult Function(ListCV value)? list,
    TResult Function(TupleCV value)? tuple,
    TResult Function(PrincipalCV value)? principal,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ListCVImplToJson(
      this,
    );
  }
}

abstract class ListCV implements ClarityValue {
  const factory ListCV(final List<ClarityValue> values) = _$ListCVImpl;

  factory ListCV.fromJson(Map<String, dynamic> json) = _$ListCVImpl.fromJson;

  List<ClarityValue> get values;

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListCVImplCopyWith<_$ListCVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TupleCVImplCopyWith<$Res> {
  factory _$$TupleCVImplCopyWith(
          _$TupleCVImpl value, $Res Function(_$TupleCVImpl) then) =
      __$$TupleCVImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, ClarityValue> data});
}

/// @nodoc
class __$$TupleCVImplCopyWithImpl<$Res>
    extends _$ClarityValueCopyWithImpl<$Res, _$TupleCVImpl>
    implements _$$TupleCVImplCopyWith<$Res> {
  __$$TupleCVImplCopyWithImpl(
      _$TupleCVImpl _value, $Res Function(_$TupleCVImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TupleCVImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, ClarityValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TupleCVImpl implements TupleCV {
  const _$TupleCVImpl(final Map<String, ClarityValue> data,
      {final String? $type})
      : _data = data,
        $type = $type ?? 'tuple';

  factory _$TupleCVImpl.fromJson(Map<String, dynamic> json) =>
      _$$TupleCVImplFromJson(json);

  final Map<String, ClarityValue> _data;
  @override
  Map<String, ClarityValue> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClarityValue.tuple(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TupleCVImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TupleCVImplCopyWith<_$TupleCVImpl> get copyWith =>
      __$$TupleCVImplCopyWithImpl<_$TupleCVImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(BigInt value) uint,
    required TResult Function(BigInt value) int,
    required TResult Function(bool value) bool,
    required TResult Function(List<int> buffer) buffer,
    required TResult Function(String content) string,
    required TResult Function(List<ClarityValue> values) list,
    required TResult Function(Map<String, ClarityValue> data) tuple,
    required TResult Function(String address) principal,
  }) {
    return tuple(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(BigInt value)? uint,
    TResult? Function(BigInt value)? int,
    TResult? Function(bool value)? bool,
    TResult? Function(List<int> buffer)? buffer,
    TResult? Function(String content)? string,
    TResult? Function(List<ClarityValue> values)? list,
    TResult? Function(Map<String, ClarityValue> data)? tuple,
    TResult? Function(String address)? principal,
  }) {
    return tuple?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(BigInt value)? uint,
    TResult Function(BigInt value)? int,
    TResult Function(bool value)? bool,
    TResult Function(List<int> buffer)? buffer,
    TResult Function(String content)? string,
    TResult Function(List<ClarityValue> values)? list,
    TResult Function(Map<String, ClarityValue> data)? tuple,
    TResult Function(String address)? principal,
    required TResult orElse(),
  }) {
    if (tuple != null) {
      return tuple(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneCV value) none,
    required TResult Function(UIntCV value) uint,
    required TResult Function(IntCV value) int,
    required TResult Function(BoolCV value) bool,
    required TResult Function(BufferCV value) buffer,
    required TResult Function(StringCV value) string,
    required TResult Function(ListCV value) list,
    required TResult Function(TupleCV value) tuple,
    required TResult Function(PrincipalCV value) principal,
  }) {
    return tuple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneCV value)? none,
    TResult? Function(UIntCV value)? uint,
    TResult? Function(IntCV value)? int,
    TResult? Function(BoolCV value)? bool,
    TResult? Function(BufferCV value)? buffer,
    TResult? Function(StringCV value)? string,
    TResult? Function(ListCV value)? list,
    TResult? Function(TupleCV value)? tuple,
    TResult? Function(PrincipalCV value)? principal,
  }) {
    return tuple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneCV value)? none,
    TResult Function(UIntCV value)? uint,
    TResult Function(IntCV value)? int,
    TResult Function(BoolCV value)? bool,
    TResult Function(BufferCV value)? buffer,
    TResult Function(StringCV value)? string,
    TResult Function(ListCV value)? list,
    TResult Function(TupleCV value)? tuple,
    TResult Function(PrincipalCV value)? principal,
    required TResult orElse(),
  }) {
    if (tuple != null) {
      return tuple(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TupleCVImplToJson(
      this,
    );
  }
}

abstract class TupleCV implements ClarityValue {
  const factory TupleCV(final Map<String, ClarityValue> data) = _$TupleCVImpl;

  factory TupleCV.fromJson(Map<String, dynamic> json) = _$TupleCVImpl.fromJson;

  Map<String, ClarityValue> get data;

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TupleCVImplCopyWith<_$TupleCVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrincipalCVImplCopyWith<$Res> {
  factory _$$PrincipalCVImplCopyWith(
          _$PrincipalCVImpl value, $Res Function(_$PrincipalCVImpl) then) =
      __$$PrincipalCVImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$PrincipalCVImplCopyWithImpl<$Res>
    extends _$ClarityValueCopyWithImpl<$Res, _$PrincipalCVImpl>
    implements _$$PrincipalCVImplCopyWith<$Res> {
  __$$PrincipalCVImplCopyWithImpl(
      _$PrincipalCVImpl _value, $Res Function(_$PrincipalCVImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$PrincipalCVImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrincipalCVImpl implements PrincipalCV {
  const _$PrincipalCVImpl(this.address, {final String? $type})
      : $type = $type ?? 'principal';

  factory _$PrincipalCVImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrincipalCVImplFromJson(json);

  @override
  final String address;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClarityValue.principal(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrincipalCVImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrincipalCVImplCopyWith<_$PrincipalCVImpl> get copyWith =>
      __$$PrincipalCVImplCopyWithImpl<_$PrincipalCVImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(BigInt value) uint,
    required TResult Function(BigInt value) int,
    required TResult Function(bool value) bool,
    required TResult Function(List<int> buffer) buffer,
    required TResult Function(String content) string,
    required TResult Function(List<ClarityValue> values) list,
    required TResult Function(Map<String, ClarityValue> data) tuple,
    required TResult Function(String address) principal,
  }) {
    return principal(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(BigInt value)? uint,
    TResult? Function(BigInt value)? int,
    TResult? Function(bool value)? bool,
    TResult? Function(List<int> buffer)? buffer,
    TResult? Function(String content)? string,
    TResult? Function(List<ClarityValue> values)? list,
    TResult? Function(Map<String, ClarityValue> data)? tuple,
    TResult? Function(String address)? principal,
  }) {
    return principal?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(BigInt value)? uint,
    TResult Function(BigInt value)? int,
    TResult Function(bool value)? bool,
    TResult Function(List<int> buffer)? buffer,
    TResult Function(String content)? string,
    TResult Function(List<ClarityValue> values)? list,
    TResult Function(Map<String, ClarityValue> data)? tuple,
    TResult Function(String address)? principal,
    required TResult orElse(),
  }) {
    if (principal != null) {
      return principal(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneCV value) none,
    required TResult Function(UIntCV value) uint,
    required TResult Function(IntCV value) int,
    required TResult Function(BoolCV value) bool,
    required TResult Function(BufferCV value) buffer,
    required TResult Function(StringCV value) string,
    required TResult Function(ListCV value) list,
    required TResult Function(TupleCV value) tuple,
    required TResult Function(PrincipalCV value) principal,
  }) {
    return principal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneCV value)? none,
    TResult? Function(UIntCV value)? uint,
    TResult? Function(IntCV value)? int,
    TResult? Function(BoolCV value)? bool,
    TResult? Function(BufferCV value)? buffer,
    TResult? Function(StringCV value)? string,
    TResult? Function(ListCV value)? list,
    TResult? Function(TupleCV value)? tuple,
    TResult? Function(PrincipalCV value)? principal,
  }) {
    return principal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneCV value)? none,
    TResult Function(UIntCV value)? uint,
    TResult Function(IntCV value)? int,
    TResult Function(BoolCV value)? bool,
    TResult Function(BufferCV value)? buffer,
    TResult Function(StringCV value)? string,
    TResult Function(ListCV value)? list,
    TResult Function(TupleCV value)? tuple,
    TResult Function(PrincipalCV value)? principal,
    required TResult orElse(),
  }) {
    if (principal != null) {
      return principal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PrincipalCVImplToJson(
      this,
    );
  }
}

abstract class PrincipalCV implements ClarityValue {
  const factory PrincipalCV(final String address) = _$PrincipalCVImpl;

  factory PrincipalCV.fromJson(Map<String, dynamic> json) =
      _$PrincipalCVImpl.fromJson;

  String get address;

  /// Create a copy of ClarityValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrincipalCVImplCopyWith<_$PrincipalCVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
