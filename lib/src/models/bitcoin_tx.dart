import 'package:freezed_annotation/freezed_annotation.dart';

part 'bitcoin_tx.freezed.dart';
part 'bitcoin_tx.g.dart';

enum SignatureHash {
  ALL,
  NONE,
  SINGLE,
  ANYONECANPAY,
}

@freezed
class BitcoinTransaction with _$BitcoinTransaction {
  const factory BitcoinTransaction({
    required String hex,
    required List<int> signAtIndex,
    List<SignatureHash>? allowedSighash,
  }) = _BitcoinTransaction;

  factory BitcoinTransaction.fromJson(Map<String, dynamic> json) =>
      _$BitcoinTransactionFromJson(json);
}
