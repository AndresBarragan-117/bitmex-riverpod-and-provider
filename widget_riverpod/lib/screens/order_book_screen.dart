import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpods/order_book_riverpod.dart';
import '../models/order_book_entry.dart';

class OrderBookScreen extends ConsumerWidget {
  const OrderBookScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderBookRiverpod);

    return Scaffold(
      appBar: AppBar(title: const Text('BitMEX -> XBTUSD')),
      body: Row(
        children: [
          _buildColumn('BUY', state.buys, Colors.green),
          _buildColumn('SELL', state.sells, Colors.red),
        ],
      ),
    );
  }

  Widget _buildColumn(
    String title,
    List<OrderBookEntry> orders,
    Color color,
  ) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (_, index) {
                final order = orders[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        order.price.toStringAsFixed(1),
                        style: TextStyle(color: color),
                      ),
                      Text(order.size.toStringAsFixed(0)),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
