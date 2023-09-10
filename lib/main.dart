import 'package:flutter/material.dart';

void main() {
  final controller = TextEditingController();

  final textField = TextField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'あなたの名前',
      hintText: 'カタカナで入力',
      errorText: '名前が長すぎます'));

  xxxx() {
    debugPrint(controller.text);
  }

  final button = ElevatedButton(onPressed: xxxx, child: Text('押してください'));

  final a = MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [textField, button],
  ))));

  runApp(a);
}
