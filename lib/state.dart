import 'package:myapp/kv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

@riverpod
class DrinkNotifier extends _$DrinkNotifier {
  @override
  Future<String> build() {
    return loadDrink();
  }

  Future<void> updateDrink(String drink) async {
    await saveDrink(drink);
    state = AsyncData(drink);
  }
}
