import 'package:flutter/material.dart';
import '../data/order_book_entry.dart';

class SellRow extends StatelessWidget {
  final OrderBookEntry order;
  final double total;

  const SellRow({super.key, required this.order, required this.total});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            order.price.toStringAsFixed(1),
            style: const TextStyle(color: Colors.red),
          ),
          Text(
            order.size.toStringAsFixed(0),
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            total.toStringAsFixed(0),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
