import 'package:dart_mappable/dart_mappable.dart';
import 'order_book_entry.dart';

part 'order_book_state.mapper.dart';

@MappableClass()
class OrderBookState with OrderBookStateMappable {
  final List<OrderBookEntry> buys;
  final List<OrderBookEntry> sells;

  const OrderBookState({
    required this.buys,
    required this.sells,
  });

  factory OrderBookState.empty() =>
      const OrderBookState(buys: [], sells: []);
}
