class OrderBookEntry {
  final double price;
  final double size;
  final bool isBuy;

  const OrderBookEntry({
    required this.price,
    required this.size,
    required this.isBuy,
  });

  OrderBookEntry copyWith({double? size}) {
    return OrderBookEntry(
      price: price,
      size: size ?? this.size,
      isBuy: isBuy,
    );
  }
}
