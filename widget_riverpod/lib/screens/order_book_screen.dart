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
      appBar: AppBar(
        title: const Text('BitMEX → XBTUSD'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildHeader(),
          const Divider(height: 1),
          Expanded(
            child: ListView.builder(
              itemCount: _maxLen(state.buys, state.sells),
              itemBuilder: (_, index) {
                final buy =
                    index < state.buys.length ? state.buys[index] : null;
                final sell =
                    index < state.sells.length ? state.sells[index] : null;

                return _buildRow(buy, sell);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        children: const [
          Expanded(
            child: Text(
              'Size',
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(
              'BUY',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'SELL',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Size',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(
    OrderBookEntry? buy,
    OrderBookEntry? sell,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Row(
        children: [
          Expanded(
            child: Text(
              buy != null ? buy.size.toStringAsFixed(0) : '',
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          Expanded(
            child: Text(
              buy?.price.toStringAsFixed(1) ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              sell?.price.toStringAsFixed(1) ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              sell != null ? sell.size.toStringAsFixed(0) : '',
              textAlign: TextAlign.left,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  int _maxLen(List a, List b) =>
      a.length > b.length ? a.length : b.length;
}