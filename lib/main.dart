import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  final col = Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text("りんごパイ"),
        Text("ぶどう"),
        Text("レモン"),
      ]);

  final row = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [col, col, col],
  );
  ;

  final a = MaterialApp(home: Scaffold(body: Center(child: row)));

  runApp(a);
}
