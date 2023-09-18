import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pack.dart';
import 'package:myapp/recipe.dart';
import 'package:myapp/vegetable.dart';

void main() {
  test6();
}

// 練習用の関数
void test1() async {
  // Stubを使えるようにする
  WidgetsFlutterBinding.ensureInitialized();
  // JSON <---- Stub
  final json = await rootBundle.loadString('assets/stub/level1.json');
  debugPrint('JSONの中身:$json');

  // JsonMap <---- JSON
  final map = jsonDecode(json);
  debugPrint('Jsonmapの中身:$map');

  // 野菜データ <---- JsonMap
  final data = Vegetable.fromJson(map);
  debugPrint('dataの中身:$data');
}

void test2() async {
  // 適当な野菜のデータ
  const data = Vegetable(name: 'キャベツ', color: '緑', season: '春と冬');
  // JsonMap <---- 野菜データ
  final map = data.toJson();
  // JSON <---- JsonMap
  final json = jsonEncode(map);

  // JSONの中身を確認
  debugPrint('JSONの中身は$json');
}

void test3() async {
  WidgetsFlutterBinding.ensureInitialized();

  final json = await rootBundle.loadString('assets/stub/level2.json');

  final map = jsonDecode(json);

  final data = Pack.fromJson(map);

  debugPrint('データの中身は$data');
}

void test4() async {
  // 適当な野菜
  const content = Vegetable(name: 'アボガド', color: '濃い緑', season: '秋');
  const data = Pack(size: '中', price: 800, content: content);

  final map = data.toJson();

  final json = jsonEncode(map);

  debugPrint(json);
}

void test5() async {
  WidgetsFlutterBinding.ensureInitialized();
  final json = await rootBundle.loadString('assets/stub/level3.json');
  final map = jsonDecode(json);
  final data = Recipe.fromJson(map);
  debugPrint('データの中身は$data');
}

void test6() async {
  const vegetables = [
    Vegetable(
      name: 'しょうが',
      color: '黄色',
      season: '秋',
    ),
    Vegetable(
      name: 'かぶ',
      color: '白',
      season: '冬',
    ),
    Vegetable(
      name: 'たけのこ',
      color: '茶色',
      season: '春',
    ),
  ];
  const data = Recipe(title: '健康スープ', calories: 500, vegetables: vegetables);
  final map = data.toJson();
  final json = jsonEncode(map);
  debugPrint(json);
}
