import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/order_book_entry.dart';
import '../models/order_book_state.dart';
import '../services/bitmex_ws_service.dart';

class OrderBookNotifier extends Notifier<OrderBookState> {
  late final BitmexWsService _ws;

  final Map<double, OrderBookEntry> _buys = {};
  final Map<double, OrderBookEntry> _sells = {};

  @override
  OrderBookState build() {
    _ws = BitmexWsService();
    _ws.stream.listen(_onMessage);

    ref.onDispose(() {
      _ws.dispose();
    });

    return OrderBookState.empty();
  }

  void _onMessage(dynamic message) {
    final decoded = jsonDecode(message);

    if (decoded['table'] != 'orderBookL2_25') return;

    final String action = decoded['action'];
    final List data = decoded['data'];

    for (final item in data) {
      final double price = item['price'].toDouble();
      final bool isBuy = item['side'] == 'Buy';
      final map = isBuy ? _buys : _sells;

      if (action == 'partial' || action == 'insert') {
        map[price] = OrderBookEntry(
          price: price,
          size: (item['size'] ?? 0).toDouble(),
          isBuy: isBuy,
        );
      } else if (action == 'update' && map.containsKey(price)) {
        map[price] =
            map[price]!.copyWith(size: (item['size'] ?? 0).toDouble());
      } else if (action == 'delete') {
        map.remove(price);
      }
    }

    state = OrderBookState(
      buys: _buys.values.toList()
        ..sort((a, b) => b.price.compareTo(a.price)),
      sells: _sells.values.toList()
        ..sort((a, b) => a.price.compareTo(b.price)),
    );
  }
}

final orderBookRiverpod =
    NotifierProvider<OrderBookNotifier, OrderBookState>(
  OrderBookNotifier.new,
);
