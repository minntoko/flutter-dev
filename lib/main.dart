import 'package:flutter/material.dart';

void main() {
  xxxx() {
    debugPrint("これから通信を始めます");
    debugPrint("通信中です");
    debugPrint("通信が終わりました");
  }

  final button = ElevatedButton(
    onPressed: null,
    child: Text('押してみて'),

    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
    ),
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: button
      )
    )
  );

  runApp(a);
}
