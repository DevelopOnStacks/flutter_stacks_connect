import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_condition.freezed.dart';
part 'post_condition.g.dart';

enum PostConditionType { stx, fungible, nonFungible }

enum PostConditionCode { sent, received }

enum PostConditionPrincipalType { origin, standard, contract }

@freezed
class AssetInfo with _$AssetInfo {
  const factory AssetInfo({
    required String contractAddress,
    required String contractName,
    required String assetName,
  }) = _AssetInfo;

  factory AssetInfo.fromJson(Map<String, dynamic> json) =>
      _$AssetInfoFromJson(json);
}

@freezed
class PostConditionPrincipal with _$PostConditionPrincipal {
  const factory PostConditionPrincipal.origin() = PostConditionPrincipalOrigin;
  const factory PostConditionPrincipal.standard({
    required String address,
  }) = PostConditionPrincipalStandard;
  const factory PostConditionPrincipal.contract({
    required String address,
    required String contractName,
  }) = PostConditionPrincipalContract;

  factory PostConditionPrincipal.fromJson(Map<String, dynamic> json) =>
      _$PostConditionPrincipalFromJson(json);
}

@freezed
class PostCondition with _$PostCondition {
  const factory PostCondition.stx({
    required PostConditionPrincipal principal,
    required PostConditionCode condition,
    required BigInt amount,
  }) = STXPostCondition;

  const factory PostCondition.fungible({
    required PostConditionPrincipal principal,
    required PostConditionCode condition,
    required BigInt amount,
    required AssetInfo asset,
  }) = FungiblePostCondition;

  const factory PostCondition.nonFungible({
    required PostConditionPrincipal principal,
    required PostConditionCode condition,
    required AssetInfo asset,
    required String assetId,
  }) = NonFungiblePostCondition;

  factory PostCondition.fromJson(Map<String, dynamic> json) =>
      _$PostConditionFromJson(json);
}

extension PostConditionUtils on PostCondition {
  String toClarity() {
    return map(
      stx: (stx) =>
          '(stx-post-condition "${stx.principal}" ${stx.condition.name} u${stx.amount})',
      fungible: (fungible) =>
          '(ft-post-condition "${fungible.principal}" ${fungible.condition.name} "${fungible.asset.contractAddress}.${fungible.asset.contractName}::${fungible.asset.assetName}" u${fungible.amount})',
      nonFungible: (nft) =>
          '(nft-post-condition "${nft.principal}" ${nft.condition.name} "${nft.asset.contractAddress}.${nft.asset.contractName}::${nft.asset.assetName}" ${nft.assetId})',
    );
  }
}
