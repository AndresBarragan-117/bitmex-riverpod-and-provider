import 'order_book_entry.dart';

class OrderBookState {
  final List<OrderBookEntry> buys;
  final List<OrderBookEntry> sells;

  const OrderBookState({
    required this.buys,
    required this.sells,
  });

  factory OrderBookState.empty() =>
      const OrderBookState(buys: [], sells: []);
}
