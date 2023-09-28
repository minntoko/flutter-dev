import 'package:flutter/material.dart';
import 'package:myapp/lemon_dialog.dart';
import 'package:myapp/pineapple_dialog.dart';

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
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                onPressed: () async {
                  // レモンダイアログを表示
                  final lemonAnswer = await showDialog(
                      context: context, builder: (_) => const LemonDialog());
                  debugPrint(lemonAnswer);

                  // パイナップルダイアログを表示
                  // ignore: use_build_context_synchronously
                  final pineappleAnswer = await showDialog(
                      context: context,
                      builder: (_) => const PineappleDialog());
                  debugPrint(pineappleAnswer);
                },
                child: const Text('開く'))));
  }
}
