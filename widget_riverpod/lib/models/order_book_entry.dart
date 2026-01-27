import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_book_entry.freezed.dart';
part 'order_book_entry.g.dart';

@freezed
class OrderBookEntry with _$OrderBookEntry {
  const factory OrderBookEntry({
    required double price,
    required double size,
    required bool isBuy,
  }) = _OrderBookEntry;

  factory OrderBookEntry.fromJson(Map<String, dynamic> json) =>
      _$OrderBookEntryFromJson(json);
}
