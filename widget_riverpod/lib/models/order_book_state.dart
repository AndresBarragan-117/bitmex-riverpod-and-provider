import 'package:freezed_annotation/freezed_annotation.dart';
import 'order_book_entry.dart';

part 'order_book_state.freezed.dart';

@freezed
class OrderBookState with _$OrderBookState {
  const factory OrderBookState({
    required List<OrderBookEntry> buys,
    required List<OrderBookEntry> sells,
  }) = _OrderBookState;

  factory OrderBookState.empty() =>
      const OrderBookState(buys: [], sells: []);
}
