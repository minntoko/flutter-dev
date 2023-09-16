import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

// 選ばれたラジオボタンのID
final radioIdProvider = StateProvider<String?>(
  (ref) {
    return null;
  },
);

// 選ばれたチェックボックスのIDたち
final checkedIdsProvider = StateProvider<Set<String>>(
  (ref) {
    return {};
  },
);

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ラジオボタンIDに合わせて画面を変化
    final radioId = ref.watch(radioIdProvider);
    // チェックボックスIDたちに合わせて画面を変化
    final checkedIds = ref.watch(checkedIdsProvider);

    // ラジオボタンが押された時の関数
    void onChangeRadio(String? id) {
      ref.read(radioIdProvider.notifier).state = id;
    }

    // チェックボックスを押された時の関数
    void onChangedCheckbox(String id) {
      final newSet = Set.of(checkedIds);

      if (newSet.contains(id)) {
        // 既にチェックされていたら取り除く
        newSet.remove(id);
      } else {
        // まだチェックされていなければ追加
        newSet.add(id);
      }
      ref.read(checkedIdsProvider.notifier).state = newSet;
    }

    final col = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RadioListTile(
          value: "A",
          groupValue: radioId,
          onChanged: onChangeRadio,
          title: const Text('ラジオボタンA'),
        ),
        RadioListTile(
          value: "B",
          groupValue: radioId,
          onChanged: onChangeRadio,
          title: const Text('ラジオボタンB'),
        ),
        RadioListTile(
          value: "C",
          groupValue: radioId,
          onChanged: onChangeRadio,
          title: const Text('ラジオボタンC'),
        ),

        // チェックボックスたち

        CheckboxListTile(
            value: checkedIds.contains('A'),
            onChanged: (check) => onChangedCheckbox('A'),
            title: const Text('チェックボックスA')),
        CheckboxListTile(
            value: checkedIds.contains('B'),
            onChanged: (check) => onChangedCheckbox('B'),
            title: const Text('チェックボックスB')),
        CheckboxListTile(
            value: checkedIds.contains('C'),
            onChanged: (check) => onChangedCheckbox('C'),
            title: const Text('チェックボックスC')),

        // okボタン
        ElevatedButton(
            onPressed: () {
              print(radioId);
              print(checkedIds);
            },
            child: const Text('ok'))
      ],
    );

    return Scaffold(
      appBar: AppBar(title: const Text('ラジオボタン・チェックボックス編')),
      body: col,
    );
  }
}
