import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/vegetable.dart';
part 'pack.freezed.dart';
part 'pack.g.dart';

// レベル1 ただの野菜のデータ
@freezed
class Pack with _$Pack {
  const factory Pack({
    // パックのサイズ
    required String size,
    
    // 値段
    required int price,

    // 中身
    required Vegetable content
  }) = _Pack;
  factory Pack.fromJson(Map<String, dynamic> json) =>
      _$PackFromJson(json);
}
