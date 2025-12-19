import 'package:ejercicio_flutter/screens/btc_enter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/order_book_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => OrderBookProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BtcEnterScreen(),
    );
  }
}
