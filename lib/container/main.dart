import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  // final col = Column(
  //     mainAxisSize: MainAxisSize.min,
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       Image.asset('assets/images/yellowArien.jpg'),
  //     ]);

  final con = Container(
    color: Colors.lightBlue,
    width: 200,
    height: 100,
    child: Image.asset('assets/images/yellowArien.jpg'),
    alignment: Alignment.centerRight,
    padding: EdgeInsets.fromLTRB(0, 5, 10, 15),
  );

  final row = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [con, con, con],
  );

  final a = MaterialApp(home: Scaffold(body: Center(child: row)));

  runApp(a);
}
