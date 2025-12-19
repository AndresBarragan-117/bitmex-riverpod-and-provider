import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/order_book_provider.dart';
import '../components/buy_row.dart';
import '../components/sell_row.dart';
import '../components/order_header.dart';

class BtcResultScreen extends StatelessWidget {
  const BtcResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orderBook = context.watch<OrderBookProvider>();

    final buyOrders = orderBook.buyOrders;
    final sellOrders = orderBook.sellOrders;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("BTC / USD"),
        backgroundColor: Colors.red,
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const OrderHeader(
                  titles: ["Total", "Size", "Price"],
                  color: Colors.green,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: buyOrders.length,
                    itemBuilder: (_, i) {
                      double cumulativeTotal = 0;

                      for (int j = 0; j <= i; j++) {
                        cumulativeTotal += buyOrders[j].size;
                      }

                      return BuyRow(
                        order: buyOrders[i],
                        total: cumulativeTotal,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                const OrderHeader(
                  titles: ["Price", "Size", "Total"],
                  color: Colors.red,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: sellOrders.length,
                    itemBuilder: (_, i) {
                      double cumulativeTotal = 0;

                      for (int j = 0; j <= i; j++) {
                        cumulativeTotal += sellOrders[j].size;
                      }

                      return SellRow(
                        order: sellOrders[i],
                        total: cumulativeTotal,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
