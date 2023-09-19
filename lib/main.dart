import 'package:flutter/material.dart';

void main() {
  const flavor = String.fromEnvironment('flavor');

  if (flavor == 'dev') {
    // ここはdevの時だけ
  }

  if (flavor == 'stg') {
    // ここはstgの時だけ
    debugPrint('バナナだぁぁぁあああ');
  }

  if (flavor == 'prd') {
    // ここはprdの時だけ
  }

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
    return const Scaffold(body: Center(child: Text('テンプレート')));
  }
}
