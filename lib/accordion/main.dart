import 'package:flutter/material.dart';
import 'package:myapp/accordion/accordion.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final column = Column(
      children: [
        Accordion(
            title: "バナナ",
            headColor: Colors.orange,
            bodyColor: Colors.orange.shade200,
            imageName: "assets/images/banana.png"),
        Accordion(
            title: "レモン",
            headColor: Colors.amber,
            bodyColor: Colors.amber.shade200,
            imageName: "assets/images/lemon.png"),
        Accordion(
            title: "ぶどう",
            headColor: Colors.purple,
            bodyColor: Colors.purple.shade200,
            imageName: "assets/images/grape.png"),
        Accordion(
            title: "いちご",
            headColor: Colors.red,
            bodyColor: Colors.red.shade200,
            imageName: "assets/images/strawberry.png"),
        Accordion(
            title: "スイカ",
            headColor: Colors.green,
            bodyColor: Colors.green.shade200,
            imageName: "assets/images/watermelon.png"),
      ],
    );
    return Scaffold(
        appBar: AppBar(title: const Text('アコーディオン編')),
        body: SingleChildScrollView(
          child: column,
        ));
  }
}
