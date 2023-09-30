import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveDrink(String value) async {
  final prefs = await SharedPreferences.getInstance();
  // キーとバリューを保存
  await prefs.setString('drink', value);
}

// ドリンクを取り出す
Future<String> loadDrink() async {
  final prefs = await SharedPreferences.getInstance();
  // キーを使って探す
  final value = prefs.getString('drink');
  return value ?? 'お水';
}
