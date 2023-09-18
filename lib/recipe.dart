import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/vegetable.dart';
part 'recipe.freezed.dart';
part 'recipe.g.dart';

// レベル1 ただの野菜のデータ
@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required String title,
    required int calories,
    required List<Vegetable> vegetables,
  }) = _Recipe;
  factory Recipe.fromJson(Map<String, dynamic> json) =>
      _$RecipeFromJson(json);
}
