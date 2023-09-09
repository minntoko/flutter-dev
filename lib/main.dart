import 'package:flutter/material.dart';
import 'package:myapp/alien_counter.dart';

void main() {
  final alien = AlienCounter(number: 10);
  final a = MaterialApp(
      home: Scaffold(
    body: Center(child: alien),
  ));
  runApp(a);
}