import 'dart:convert';
import 'package:flutter/material.dart';

import '../services/bitmex_ws_service.dart';
import '../data/order_book_entry.dart';

class OrderBookProvider extends ChangeNotifier {
  final BitmexWsService _ws = BitmexWsService();

  final Map<double, OrderBookEntry> _buys = {};
  final Map<double, OrderBookEntry> _sells = {};

  List<OrderBookEntry> get buyOrders {
    final list = _buys.values.toList();
    list.sort((a, b) => b.price.compareTo(a.price));
    return list;
  }

  List<OrderBookEntry> get sellOrders {
    final list = _sells.values.toList();
    list.sort((a, b) => a.price.compareTo(b.price));
    return list;
  }

  OrderBookProvider() {
    _ws.stream.listen(_onMessage);
  }

  void _onMessage(dynamic message) {
    final decoded = jsonDecode(message);
    // debugPrint('$decoded');

    if (decoded['table'] != 'orderBookL2_25') return;

    debugPrint('TABLE: ${decoded['table']}');

    final String action = decoded['action'];
    final List data = decoded['data'];

    // debugPrint("data: ${data.toString()}");

    debugPrint('WS action: $action | items: ${data.length}');

    for (final item in data) {
      final price = item['price'].toDouble();
      final isBuy = item['side'] == 'Buy';
      final map = isBuy ? _buys : _sells;

      if (action == 'partial' || action == 'insert') {
        map[price] = OrderBookEntry(
          price: price,
          size: (item['size'] ?? 0).toDouble(),
          isBuy: isBuy,
        );
      } else if (action == 'update') {
        if (map.containsKey(price)) {
          map[price] = map[price]!.copyWith(
            size: (item['size'] ?? 0).toDouble(),
          );
        }
      } else if (action == 'delete') {
        map.remove(price);
      }
    }
    debugPrint('BUYS: ${_buys.length} | SELLS: ${_sells.length}');
    notifyListeners();
  }

  @override
  void dispose() {
    _ws.dispose();
    super.dispose();
  }
}
