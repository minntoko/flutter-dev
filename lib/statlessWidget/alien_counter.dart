import 'package:flutter/material.dart';

class AlienCounter extends StatelessWidget {
  final int number;
  const AlienCounter({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final alian = Image.asset('assets/images/yellowArien.png');
    final alianCon = Container(
      width: 100,
      child: alian,
    );
    final text = Text(
      '$number',
      style: const TextStyle(
        color: Colors.yellow,
        fontSize: 60,
      ),
    );
    final row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [alianCon, text],
    );
    final con = Container(
      width: 320,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(10)),
      child: row,
    );
    return con;
  }
}


