// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssetInfo _$AssetInfoFromJson(Map<String, dynamic> json) {
  return _AssetInfo.fromJson(json);
}

/// @nodoc
mixin _$AssetInfo {
  String get contractAddress => throw _privateConstructorUsedError;
  String get contractName => throw _privateConstructorUsedError;
  String get assetName => throw _privateConstructorUsedError;

  /// Serializes this AssetInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssetInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssetInfoCopyWith<AssetInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetInfoCopyWith<$Res> {
  factory $AssetInfoCopyWith(AssetInfo value, $Res Function(AssetInfo) then) =
      _$AssetInfoCopyWithImpl<$Res, AssetInfo>;
  @useResult
  $Res call({String contractAddress, String contractName, String assetName});
}

/// @nodoc
class _$AssetInfoCopyWithImpl<$Res, $Val extends AssetInfo>
    implements $AssetInfoCopyWith<$Res> {
  _$AssetInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractAddress = null,
    Object? contractName = null,
    Object? assetName = null,
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
      assetName: null == assetName
          ? _value.assetName
          : assetName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssetInfoImplCopyWith<$Res>
    implements $AssetInfoCopyWith<$Res> {
  factory _$$AssetInfoImplCopyWith(
          _$AssetInfoImpl value, $Res Function(_$AssetInfoImpl) then) =
      __$$AssetInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contractAddress, String contractName, String assetName});
}

/// @nodoc
class __$$AssetInfoImplCopyWithImpl<$Res>
    extends _$AssetInfoCopyWithImpl<$Res, _$AssetInfoImpl>
    implements _$$AssetInfoImplCopyWith<$Res> {
  __$$AssetInfoImplCopyWithImpl(
      _$AssetInfoImpl _value, $Res Function(_$AssetInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractAddress = null,
    Object? contractName = null,
    Object? assetName = null,
  }) {
    return _then(_$AssetInfoImpl(
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      contractName: null == contractName
          ? _value.contractName
          : contractName // ignore: cast_nullable_to_non_nullable
              as String,
      assetName: null == assetName
          ? _value.assetName
          : assetName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssetInfoImpl implements _AssetInfo {
  const _$AssetInfoImpl(
      {required this.contractAddress,
      required this.contractName,
      required this.assetName});

  factory _$AssetInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetInfoImplFromJson(json);

  @override
  final String contractAddress;
  @override
  final String contractName;
  @override
  final String assetName;

  @override
  String toString() {
    return 'AssetInfo(contractAddress: $contractAddress, contractName: $contractName, assetName: $assetName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetInfoImpl &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.contractName, contractName) ||
                other.contractName == contractName) &&
            (identical(other.assetName, assetName) ||
                other.assetName == assetName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contractAddress, contractName, assetName);

  /// Create a copy of AssetInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetInfoImplCopyWith<_$AssetInfoImpl> get copyWith =>
      __$$AssetInfoImplCopyWithImpl<_$AssetInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetInfoImplToJson(
      this,
    );
  }
}

abstract class _AssetInfo implements AssetInfo {
  const factory _AssetInfo(
      {required final String contractAddress,
      required final String contractName,
      required final String assetName}) = _$AssetInfoImpl;

  factory _AssetInfo.fromJson(Map<String, dynamic> json) =
      _$AssetInfoImpl.fromJson;

  @override
  String get contractAddress;
  @override
  String get contractName;
  @override
  String get assetName;

  /// Create a copy of AssetInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetInfoImplCopyWith<_$AssetInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostConditionPrincipal _$PostConditionPrincipalFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'origin':
      return PostConditionPrincipalOrigin.fromJson(json);
    case 'standard':
      return PostConditionPrincipalStandard.fromJson(json);
    case 'contract':
      return PostConditionPrincipalContract.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'PostConditionPrincipal',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PostConditionPrincipal {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() origin,
    required TResult Function(String address) standard,
    required TResult Function(String address, String contractName) contract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? origin,
    TResult? Function(String address)? standard,
    TResult? Function(String address, String contractName)? contract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? origin,
    TResult Function(String address)? standard,
    TResult Function(String address, String contractName)? contract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostConditionPrincipalOrigin value) origin,
    required TResult Function(PostConditionPrincipalStandard value) standard,
    required TResult Function(PostConditionPrincipalContract value) contract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostConditionPrincipalOrigin value)? origin,
    TResult? Function(PostConditionPrincipalStandard value)? standard,
    TResult? Function(PostConditionPrincipalContract value)? contract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostConditionPrincipalOrigin value)? origin,
    TResult Function(PostConditionPrincipalStandard value)? standard,
    TResult Function(PostConditionPrincipalContract value)? contract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostConditionPrincipal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostConditionPrincipalCopyWith<$Res> {
  factory $PostConditionPrincipalCopyWith(PostConditionPrincipal value,
          $Res Function(PostConditionPrincipal) then) =
      _$PostConditionPrincipalCopyWithImpl<$Res, PostConditionPrincipal>;
}

/// @nodoc
class _$PostConditionPrincipalCopyWithImpl<$Res,
        $Val extends PostConditionPrincipal>
    implements $PostConditionPrincipalCopyWith<$Res> {
  _$PostConditionPrincipalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostConditionPrincipal
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PostConditionPrincipalOriginImplCopyWith<$Res> {
  factory _$$PostConditionPrincipalOriginImplCopyWith(
          _$PostConditionPrincipalOriginImpl value,
          $Res Function(_$PostConditionPrincipalOriginImpl) then) =
      __$$PostConditionPrincipalOriginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostConditionPrincipalOriginImplCopyWithImpl<$Res>
    extends _$PostConditionPrincipalCopyWithImpl<$Res,
        _$PostConditionPrincipalOriginImpl>
    implements _$$PostConditionPrincipalOriginImplCopyWith<$Res> {
  __$$PostConditionPrincipalOriginImplCopyWithImpl(
      _$PostConditionPrincipalOriginImpl _value,
      $Res Function(_$PostConditionPrincipalOriginImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostConditionPrincipal
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PostConditionPrincipalOriginImpl
    implements PostConditionPrincipalOrigin {
  const _$PostConditionPrincipalOriginImpl({final String? $type})
      : $type = $type ?? 'origin';

  factory _$PostConditionPrincipalOriginImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostConditionPrincipalOriginImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostConditionPrincipal.origin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostConditionPrincipalOriginImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() origin,
    required TResult Function(String address) standard,
    required TResult Function(String address, String contractName) contract,
  }) {
    return origin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? origin,
    TResult? Function(String address)? standard,
    TResult? Function(String address, String contractName)? contract,
  }) {
    return origin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? origin,
    TResult Function(String address)? standard,
    TResult Function(String address, String contractName)? contract,
    required TResult orElse(),
  }) {
    if (origin != null) {
      return origin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostConditionPrincipalOrigin value) origin,
    required TResult Function(PostConditionPrincipalStandard value) standard,
    required TResult Function(PostConditionPrincipalContract value) contract,
  }) {
    return origin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostConditionPrincipalOrigin value)? origin,
    TResult? Function(PostConditionPrincipalStandard value)? standard,
    TResult? Function(PostConditionPrincipalContract value)? contract,
  }) {
    return origin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostConditionPrincipalOrigin value)? origin,
    TResult Function(PostConditionPrincipalStandard value)? standard,
    TResult Function(PostConditionPrincipalContract value)? contract,
    required TResult orElse(),
  }) {
    if (origin != null) {
      return origin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostConditionPrincipalOriginImplToJson(
      this,
    );
  }
}

abstract class PostConditionPrincipalOrigin implements PostConditionPrincipal {
  const factory PostConditionPrincipalOrigin() =
      _$PostConditionPrincipalOriginImpl;

  factory PostConditionPrincipalOrigin.fromJson(Map<String, dynamic> json) =
      _$PostConditionPrincipalOriginImpl.fromJson;
}

/// @nodoc
abstract class _$$PostConditionPrincipalStandardImplCopyWith<$Res> {
  factory _$$PostConditionPrincipalStandardImplCopyWith(
          _$PostConditionPrincipalStandardImpl value,
          $Res Function(_$PostConditionPrincipalStandardImpl) then) =
      __$$PostConditionPrincipalStandardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$PostConditionPrincipalStandardImplCopyWithImpl<$Res>
    extends _$PostConditionPrincipalCopyWithImpl<$Res,
        _$PostConditionPrincipalStandardImpl>
    implements _$$PostConditionPrincipalStandardImplCopyWith<$Res> {
  __$$PostConditionPrincipalStandardImplCopyWithImpl(
      _$PostConditionPrincipalStandardImpl _value,
      $Res Function(_$PostConditionPrincipalStandardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostConditionPrincipal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$PostConditionPrincipalStandardImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostConditionPrincipalStandardImpl
    implements PostConditionPrincipalStandard {
  const _$PostConditionPrincipalStandardImpl(
      {required this.address, final String? $type})
      : $type = $type ?? 'standard';

  factory _$PostConditionPrincipalStandardImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostConditionPrincipalStandardImplFromJson(json);

  @override
  final String address;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostConditionPrincipal.standard(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostConditionPrincipalStandardImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of PostConditionPrincipal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostConditionPrincipalStandardImplCopyWith<
          _$PostConditionPrincipalStandardImpl>
      get copyWith => __$$PostConditionPrincipalStandardImplCopyWithImpl<
          _$PostConditionPrincipalStandardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() origin,
    required TResult Function(String address) standard,
    required TResult Function(String address, String contractName) contract,
  }) {
    return standard(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? origin,
    TResult? Function(String address)? standard,
    TResult? Function(String address, String contractName)? contract,
  }) {
    return standard?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? origin,
    TResult Function(String address)? standard,
    TResult Function(String address, String contractName)? contract,
    required TResult orElse(),
  }) {
    if (standard != null) {
      return standard(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostConditionPrincipalOrigin value) origin,
    required TResult Function(PostConditionPrincipalStandard value) standard,
    required TResult Function(PostConditionPrincipalContract value) contract,
  }) {
    return standard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostConditionPrincipalOrigin value)? origin,
    TResult? Function(PostConditionPrincipalStandard value)? standard,
    TResult? Function(PostConditionPrincipalContract value)? contract,
  }) {
    return standard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostConditionPrincipalOrigin value)? origin,
    TResult Function(PostConditionPrincipalStandard value)? standard,
    TResult Function(PostConditionPrincipalContract value)? contract,
    required TResult orElse(),
  }) {
    if (standard != null) {
      return standard(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostConditionPrincipalStandardImplToJson(
      this,
    );
  }
}

abstract class PostConditionPrincipalStandard
    implements PostConditionPrincipal {
  const factory PostConditionPrincipalStandard(
      {required final String address}) = _$PostConditionPrincipalStandardImpl;

  factory PostConditionPrincipalStandard.fromJson(Map<String, dynamic> json) =
      _$PostConditionPrincipalStandardImpl.fromJson;

  String get address;

  /// Create a copy of PostConditionPrincipal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostConditionPrincipalStandardImplCopyWith<
          _$PostConditionPrincipalStandardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostConditionPrincipalContractImplCopyWith<$Res> {
  factory _$$PostConditionPrincipalContractImplCopyWith(
          _$PostConditionPrincipalContractImpl value,
          $Res Function(_$PostConditionPrincipalContractImpl) then) =
      __$$PostConditionPrincipalContractImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String address, String contractName});
}

/// @nodoc
class __$$PostConditionPrincipalContractImplCopyWithImpl<$Res>
    extends _$PostConditionPrincipalCopyWithImpl<$Res,
        _$PostConditionPrincipalContractImpl>
    implements _$$PostConditionPrincipalContractImplCopyWith<$Res> {
  __$$PostConditionPrincipalContractImplCopyWithImpl(
      _$PostConditionPrincipalContractImpl _value,
      $Res Function(_$PostConditionPrincipalContractImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostConditionPrincipal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? contractName = null,
  }) {
    return _then(_$PostConditionPrincipalContractImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      contractName: null == contractName
          ? _value.contractName
          : contractName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostConditionPrincipalContractImpl
    implements PostConditionPrincipalContract {
  const _$PostConditionPrincipalContractImpl(
      {required this.address, required this.contractName, final String? $type})
      : $type = $type ?? 'contract';

  factory _$PostConditionPrincipalContractImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostConditionPrincipalContractImplFromJson(json);

  @override
  final String address;
  @override
  final String contractName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostConditionPrincipal.contract(address: $address, contractName: $contractName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostConditionPrincipalContractImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contractName, contractName) ||
                other.contractName == contractName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, contractName);

  /// Create a copy of PostConditionPrincipal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostConditionPrincipalContractImplCopyWith<
          _$PostConditionPrincipalContractImpl>
      get copyWith => __$$PostConditionPrincipalContractImplCopyWithImpl<
          _$PostConditionPrincipalContractImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() origin,
    required TResult Function(String address) standard,
    required TResult Function(String address, String contractName) contract,
  }) {
    return contract(address, contractName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? origin,
    TResult? Function(String address)? standard,
    TResult? Function(String address, String contractName)? contract,
  }) {
    return contract?.call(address, contractName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? origin,
    TResult Function(String address)? standard,
    TResult Function(String address, String contractName)? contract,
    required TResult orElse(),
  }) {
    if (contract != null) {
      return contract(address, contractName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostConditionPrincipalOrigin value) origin,
    required TResult Function(PostConditionPrincipalStandard value) standard,
    required TResult Function(PostConditionPrincipalContract value) contract,
  }) {
    return contract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostConditionPrincipalOrigin value)? origin,
    TResult? Function(PostConditionPrincipalStandard value)? standard,
    TResult? Function(PostConditionPrincipalContract value)? contract,
  }) {
    return contract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostConditionPrincipalOrigin value)? origin,
    TResult Function(PostConditionPrincipalStandard value)? standard,
    TResult Function(PostConditionPrincipalContract value)? contract,
    required TResult orElse(),
  }) {
    if (contract != null) {
      return contract(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostConditionPrincipalContractImplToJson(
      this,
    );
  }
}

abstract class PostConditionPrincipalContract
    implements PostConditionPrincipal {
  const factory PostConditionPrincipalContract(
          {required final String address, required final String contractName}) =
      _$PostConditionPrincipalContractImpl;

  factory PostConditionPrincipalContract.fromJson(Map<String, dynamic> json) =
      _$PostConditionPrincipalContractImpl.fromJson;

  String get address;
  String get contractName;

  /// Create a copy of PostConditionPrincipal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostConditionPrincipalContractImplCopyWith<
          _$PostConditionPrincipalContractImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostCondition _$PostConditionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'stx':
      return STXPostCondition.fromJson(json);
    case 'fungible':
      return FungiblePostCondition.fromJson(json);
    case 'nonFungible':
      return NonFungiblePostCondition.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PostCondition',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PostCondition {
  PostConditionPrincipal get principal => throw _privateConstructorUsedError;
  PostConditionCode get condition => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)
        stx,
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)
        fungible,
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)
        nonFungible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)?
        stx,
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)?
        fungible,
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)?
        nonFungible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)?
        stx,
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)?
        fungible,
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)?
        nonFungible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(STXPostCondition value) stx,
    required TResult Function(FungiblePostCondition value) fungible,
    required TResult Function(NonFungiblePostCondition value) nonFungible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(STXPostCondition value)? stx,
    TResult? Function(FungiblePostCondition value)? fungible,
    TResult? Function(NonFungiblePostCondition value)? nonFungible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(STXPostCondition value)? stx,
    TResult Function(FungiblePostCondition value)? fungible,
    TResult Function(NonFungiblePostCondition value)? nonFungible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostCondition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostConditionCopyWith<PostCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostConditionCopyWith<$Res> {
  factory $PostConditionCopyWith(
          PostCondition value, $Res Function(PostCondition) then) =
      _$PostConditionCopyWithImpl<$Res, PostCondition>;
  @useResult
  $Res call({PostConditionPrincipal principal, PostConditionCode condition});

  $PostConditionPrincipalCopyWith<$Res> get principal;
}

/// @nodoc
class _$PostConditionCopyWithImpl<$Res, $Val extends PostCondition>
    implements $PostConditionCopyWith<$Res> {
  _$PostConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? principal = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      principal: null == principal
          ? _value.principal
          : principal // ignore: cast_nullable_to_non_nullable
              as PostConditionPrincipal,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as PostConditionCode,
    ) as $Val);
  }

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostConditionPrincipalCopyWith<$Res> get principal {
    return $PostConditionPrincipalCopyWith<$Res>(_value.principal, (value) {
      return _then(_value.copyWith(principal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$STXPostConditionImplCopyWith<$Res>
    implements $PostConditionCopyWith<$Res> {
  factory _$$STXPostConditionImplCopyWith(_$STXPostConditionImpl value,
          $Res Function(_$STXPostConditionImpl) then) =
      __$$STXPostConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostConditionPrincipal principal,
      PostConditionCode condition,
      BigInt amount});

  @override
  $PostConditionPrincipalCopyWith<$Res> get principal;
}

/// @nodoc
class __$$STXPostConditionImplCopyWithImpl<$Res>
    extends _$PostConditionCopyWithImpl<$Res, _$STXPostConditionImpl>
    implements _$$STXPostConditionImplCopyWith<$Res> {
  __$$STXPostConditionImplCopyWithImpl(_$STXPostConditionImpl _value,
      $Res Function(_$STXPostConditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? principal = null,
    Object? condition = null,
    Object? amount = null,
  }) {
    return _then(_$STXPostConditionImpl(
      principal: null == principal
          ? _value.principal
          : principal // ignore: cast_nullable_to_non_nullable
              as PostConditionPrincipal,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as PostConditionCode,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$STXPostConditionImpl implements STXPostCondition {
  const _$STXPostConditionImpl(
      {required this.principal,
      required this.condition,
      required this.amount,
      final String? $type})
      : $type = $type ?? 'stx';

  factory _$STXPostConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$STXPostConditionImplFromJson(json);

  @override
  final PostConditionPrincipal principal;
  @override
  final PostConditionCode condition;
  @override
  final BigInt amount;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostCondition.stx(principal: $principal, condition: $condition, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$STXPostConditionImpl &&
            (identical(other.principal, principal) ||
                other.principal == principal) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, principal, condition, amount);

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$STXPostConditionImplCopyWith<_$STXPostConditionImpl> get copyWith =>
      __$$STXPostConditionImplCopyWithImpl<_$STXPostConditionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)
        stx,
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)
        fungible,
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)
        nonFungible,
  }) {
    return stx(principal, condition, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)?
        stx,
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)?
        fungible,
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)?
        nonFungible,
  }) {
    return stx?.call(principal, condition, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)?
        stx,
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)?
        fungible,
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)?
        nonFungible,
    required TResult orElse(),
  }) {
    if (stx != null) {
      return stx(principal, condition, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(STXPostCondition value) stx,
    required TResult Function(FungiblePostCondition value) fungible,
    required TResult Function(NonFungiblePostCondition value) nonFungible,
  }) {
    return stx(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(STXPostCondition value)? stx,
    TResult? Function(FungiblePostCondition value)? fungible,
    TResult? Function(NonFungiblePostCondition value)? nonFungible,
  }) {
    return stx?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(STXPostCondition value)? stx,
    TResult Function(FungiblePostCondition value)? fungible,
    TResult Function(NonFungiblePostCondition value)? nonFungible,
    required TResult orElse(),
  }) {
    if (stx != null) {
      return stx(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$STXPostConditionImplToJson(
      this,
    );
  }
}

abstract class STXPostCondition implements PostCondition {
  const factory STXPostCondition(
      {required final PostConditionPrincipal principal,
      required final PostConditionCode condition,
      required final BigInt amount}) = _$STXPostConditionImpl;

  factory STXPostCondition.fromJson(Map<String, dynamic> json) =
      _$STXPostConditionImpl.fromJson;

  @override
  PostConditionPrincipal get principal;
  @override
  PostConditionCode get condition;
  BigInt get amount;

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$STXPostConditionImplCopyWith<_$STXPostConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FungiblePostConditionImplCopyWith<$Res>
    implements $PostConditionCopyWith<$Res> {
  factory _$$FungiblePostConditionImplCopyWith(
          _$FungiblePostConditionImpl value,
          $Res Function(_$FungiblePostConditionImpl) then) =
      __$$FungiblePostConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostConditionPrincipal principal,
      PostConditionCode condition,
      BigInt amount,
      AssetInfo asset});

  @override
  $PostConditionPrincipalCopyWith<$Res> get principal;
  $AssetInfoCopyWith<$Res> get asset;
}

/// @nodoc
class __$$FungiblePostConditionImplCopyWithImpl<$Res>
    extends _$PostConditionCopyWithImpl<$Res, _$FungiblePostConditionImpl>
    implements _$$FungiblePostConditionImplCopyWith<$Res> {
  __$$FungiblePostConditionImplCopyWithImpl(_$FungiblePostConditionImpl _value,
      $Res Function(_$FungiblePostConditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? principal = null,
    Object? condition = null,
    Object? amount = null,
    Object? asset = null,
  }) {
    return _then(_$FungiblePostConditionImpl(
      principal: null == principal
          ? _value.principal
          : principal // ignore: cast_nullable_to_non_nullable
              as PostConditionPrincipal,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as PostConditionCode,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as AssetInfo,
    ));
  }

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssetInfoCopyWith<$Res> get asset {
    return $AssetInfoCopyWith<$Res>(_value.asset, (value) {
      return _then(_value.copyWith(asset: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FungiblePostConditionImpl implements FungiblePostCondition {
  const _$FungiblePostConditionImpl(
      {required this.principal,
      required this.condition,
      required this.amount,
      required this.asset,
      final String? $type})
      : $type = $type ?? 'fungible';

  factory _$FungiblePostConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FungiblePostConditionImplFromJson(json);

  @override
  final PostConditionPrincipal principal;
  @override
  final PostConditionCode condition;
  @override
  final BigInt amount;
  @override
  final AssetInfo asset;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostCondition.fungible(principal: $principal, condition: $condition, amount: $amount, asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FungiblePostConditionImpl &&
            (identical(other.principal, principal) ||
                other.principal == principal) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.asset, asset) || other.asset == asset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, principal, condition, amount, asset);

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FungiblePostConditionImplCopyWith<_$FungiblePostConditionImpl>
      get copyWith => __$$FungiblePostConditionImplCopyWithImpl<
          _$FungiblePostConditionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)
        stx,
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)
        fungible,
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)
        nonFungible,
  }) {
    return fungible(principal, condition, amount, asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)?
        stx,
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)?
        fungible,
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)?
        nonFungible,
  }) {
    return fungible?.call(principal, condition, amount, asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)?
        stx,
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)?
        fungible,
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)?
        nonFungible,
    required TResult orElse(),
  }) {
    if (fungible != null) {
      return fungible(principal, condition, amount, asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(STXPostCondition value) stx,
    required TResult Function(FungiblePostCondition value) fungible,
    required TResult Function(NonFungiblePostCondition value) nonFungible,
  }) {
    return fungible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(STXPostCondition value)? stx,
    TResult? Function(FungiblePostCondition value)? fungible,
    TResult? Function(NonFungiblePostCondition value)? nonFungible,
  }) {
    return fungible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(STXPostCondition value)? stx,
    TResult Function(FungiblePostCondition value)? fungible,
    TResult Function(NonFungiblePostCondition value)? nonFungible,
    required TResult orElse(),
  }) {
    if (fungible != null) {
      return fungible(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FungiblePostConditionImplToJson(
      this,
    );
  }
}

abstract class FungiblePostCondition implements PostCondition {
  const factory FungiblePostCondition(
      {required final PostConditionPrincipal principal,
      required final PostConditionCode condition,
      required final BigInt amount,
      required final AssetInfo asset}) = _$FungiblePostConditionImpl;

  factory FungiblePostCondition.fromJson(Map<String, dynamic> json) =
      _$FungiblePostConditionImpl.fromJson;

  @override
  PostConditionPrincipal get principal;
  @override
  PostConditionCode get condition;
  BigInt get amount;
  AssetInfo get asset;

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FungiblePostConditionImplCopyWith<_$FungiblePostConditionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NonFungiblePostConditionImplCopyWith<$Res>
    implements $PostConditionCopyWith<$Res> {
  factory _$$NonFungiblePostConditionImplCopyWith(
          _$NonFungiblePostConditionImpl value,
          $Res Function(_$NonFungiblePostConditionImpl) then) =
      __$$NonFungiblePostConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostConditionPrincipal principal,
      PostConditionCode condition,
      AssetInfo asset,
      String assetId});

  @override
  $PostConditionPrincipalCopyWith<$Res> get principal;
  $AssetInfoCopyWith<$Res> get asset;
}

/// @nodoc
class __$$NonFungiblePostConditionImplCopyWithImpl<$Res>
    extends _$PostConditionCopyWithImpl<$Res, _$NonFungiblePostConditionImpl>
    implements _$$NonFungiblePostConditionImplCopyWith<$Res> {
  __$$NonFungiblePostConditionImplCopyWithImpl(
      _$NonFungiblePostConditionImpl _value,
      $Res Function(_$NonFungiblePostConditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? principal = null,
    Object? condition = null,
    Object? asset = null,
    Object? assetId = null,
  }) {
    return _then(_$NonFungiblePostConditionImpl(
      principal: null == principal
          ? _value.principal
          : principal // ignore: cast_nullable_to_non_nullable
              as PostConditionPrincipal,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as PostConditionCode,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as AssetInfo,
      assetId: null == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssetInfoCopyWith<$Res> get asset {
    return $AssetInfoCopyWith<$Res>(_value.asset, (value) {
      return _then(_value.copyWith(asset: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$NonFungiblePostConditionImpl implements NonFungiblePostCondition {
  const _$NonFungiblePostConditionImpl(
      {required this.principal,
      required this.condition,
      required this.asset,
      required this.assetId,
      final String? $type})
      : $type = $type ?? 'nonFungible';

  factory _$NonFungiblePostConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NonFungiblePostConditionImplFromJson(json);

  @override
  final PostConditionPrincipal principal;
  @override
  final PostConditionCode condition;
  @override
  final AssetInfo asset;
  @override
  final String assetId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostCondition.nonFungible(principal: $principal, condition: $condition, asset: $asset, assetId: $assetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NonFungiblePostConditionImpl &&
            (identical(other.principal, principal) ||
                other.principal == principal) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.assetId, assetId) || other.assetId == assetId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, principal, condition, asset, assetId);

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NonFungiblePostConditionImplCopyWith<_$NonFungiblePostConditionImpl>
      get copyWith => __$$NonFungiblePostConditionImplCopyWithImpl<
          _$NonFungiblePostConditionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)
        stx,
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)
        fungible,
    required TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)
        nonFungible,
  }) {
    return nonFungible(principal, condition, asset, assetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)?
        stx,
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)?
        fungible,
    TResult? Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)?
        nonFungible,
  }) {
    return nonFungible?.call(principal, condition, asset, assetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount)?
        stx,
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, BigInt amount, AssetInfo asset)?
        fungible,
    TResult Function(PostConditionPrincipal principal,
            PostConditionCode condition, AssetInfo asset, String assetId)?
        nonFungible,
    required TResult orElse(),
  }) {
    if (nonFungible != null) {
      return nonFungible(principal, condition, asset, assetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(STXPostCondition value) stx,
    required TResult Function(FungiblePostCondition value) fungible,
    required TResult Function(NonFungiblePostCondition value) nonFungible,
  }) {
    return nonFungible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(STXPostCondition value)? stx,
    TResult? Function(FungiblePostCondition value)? fungible,
    TResult? Function(NonFungiblePostCondition value)? nonFungible,
  }) {
    return nonFungible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(STXPostCondition value)? stx,
    TResult Function(FungiblePostCondition value)? fungible,
    TResult Function(NonFungiblePostCondition value)? nonFungible,
    required TResult orElse(),
  }) {
    if (nonFungible != null) {
      return nonFungible(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NonFungiblePostConditionImplToJson(
      this,
    );
  }
}

abstract class NonFungiblePostCondition implements PostCondition {
  const factory NonFungiblePostCondition(
      {required final PostConditionPrincipal principal,
      required final PostConditionCode condition,
      required final AssetInfo asset,
      required final String assetId}) = _$NonFungiblePostConditionImpl;

  factory NonFungiblePostCondition.fromJson(Map<String, dynamic> json) =
      _$NonFungiblePostConditionImpl.fromJson;

  @override
  PostConditionPrincipal get principal;
  @override
  PostConditionCode get condition;
  AssetInfo get asset;
  String get assetId;

  /// Create a copy of PostCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NonFungiblePostConditionImplCopyWith<_$NonFungiblePostConditionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
