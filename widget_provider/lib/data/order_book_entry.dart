class OrderBookEntry {
  final double price;
  final double size;
  final bool isBuy;

  const OrderBookEntry({
    required this.price,
    required this.size,
    required this.isBuy,
  });

  OrderBookEntry copyWith({double? price, double? size, bool? isBuy}) {
    return OrderBookEntry(
      price: price ?? this.price,
      size: size ?? this.size,
      isBuy: isBuy ?? this.isBuy,
    );
  }
}
