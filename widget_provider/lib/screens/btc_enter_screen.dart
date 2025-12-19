import 'package:ejercicio_flutter/components/button_enter.dart';
import 'package:flutter/material.dart';

class BtcEnterScreen extends StatefulWidget {
  const BtcEnterScreen({super.key});

  @override
  State<BtcEnterScreen> createState() => _BtcEnterScreenState();
}

class _BtcEnterScreenState extends State<BtcEnterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFACACAC),
      appBar: AppBar(
        title: Text("BTC USD"),
        backgroundColor: Color.fromARGB(255, 243, 46, 46),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(children: [ButtonEnter(title: "")]),
    );
  }
}
