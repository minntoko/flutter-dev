import 'package:flutter/material.dart';

class LemonDialog extends StatelessWidget {
  const LemonDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('レモン'),
      content: const Text('唐揚げにかけてもいいですか？'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context, 'キャンセルが押されました。');
            },
            child: const Text('キャンセル',)),
        TextButton(
            onPressed: () {
              Navigator.pop(context, 'OKが押されました。');
            },
            child: const Text('OK')),
      ],
    );
  }
}
