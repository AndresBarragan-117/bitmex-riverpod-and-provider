import 'package:dart_mappable/dart_mappable.dart';

part 'order_book_entry.mapper.dart';

@MappableClass()
class OrderBookEntry with OrderBookEntryMappable {
  final double price;
  final double size;
  final bool isBuy;

  const OrderBookEntry({
    required this.price,
    required this.size,
    required this.isBuy,
  });
}
