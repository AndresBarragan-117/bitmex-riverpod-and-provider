import 'package:ejercicio_flutter/screens/btc_result_screen.dart';
import 'package:flutter/material.dart';

class ButtonEnter extends StatefulWidget {
  final String title;

  const ButtonEnter({super.key, required this.title});

  @override
  State<ButtonEnter> createState() => _ButtonEnterState();
}

class _ButtonEnterState extends State<ButtonEnter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 200, left: 20, right: 20),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BtcResultScreen()),
            );
          },
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            backgroundColor: WidgetStateProperty.all(Color(0xFF2D63F8)),
          ),
          child: Text(
            "ENTER BTC",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
