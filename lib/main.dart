import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const app = MyApp();

  const scope = ProviderScope(child: app);

  // Webで動いているかどうか
  if (kIsWeb) {
    final devicePreview = DevicePreview(builder: (_) => scope);
    runApp(devicePreview);
  } else {
    runApp(scope);
  }
}

// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面サイズ
    final screenSize = MediaQuery.of(context).size;

    // コンテナの横幅
    final width = 200 * (screenSize.width / 390);

    // 画面向き
    final o = MediaQuery.of(context).orientation;
    String text2 = '';
    if (o == Orientation.portrait) {
      text2 = '縦向きです';
    } else {
      text2 = '横向きです';
    }

    String text = '';
    if (screenSize.width > 1000) {
      text = 'これはパソコンサイズです';
    } else if (screenSize.width > 600) {
      text = 'これはタブレットサイズです';
    } else if (screenSize.width > 320) {
      text = 'これはスマホサイズです';
    } else {
      text = '画面が小さすぎます';
    }
    return Scaffold(
        body: Center(
            child: Container(
      color: Colors.lightBlue,
      width: width,
      height: 200,
      child: Text(
        text2,
        style: const TextStyle(fontSize: 30),
      ),
    )));
  }
}
