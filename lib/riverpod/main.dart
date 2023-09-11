import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const app = MaterialApp(home: Sample());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

final nicknameProvider = StateProvider<String>((ref) {
  return "みんとこ";
});

class Sample extends ConsumerWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nickname = ref.watch(nicknameProvider);
    return Scaffold(
      appBar: AppBar(title: Text(nickname),),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(nickname),
            ElevatedButton(onPressed: () => tapA(ref), child: const Text('A')),
            ElevatedButton(onPressed: () => tapB(ref), child: const Text('B')),
            ElevatedButton(onPressed: () => tapC(ref), child: const Text('C')),
            Text(nickname),
          ]
        ),
      )
    );
  }

  tapA(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "みんとこ";
  }

  tapB(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "Minntoko";
    }
  tapC(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "眠常";
    }
}
