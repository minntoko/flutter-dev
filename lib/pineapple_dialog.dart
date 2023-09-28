import 'package:flutter/material.dart';

class PineappleDialog extends StatelessWidget {
  const PineappleDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('パイナップル'),
      content: const Text('ピザに乗せてもいいですか？'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context, 'キャンセルが押されました。');
            },
            child: const Text(
              'キャンセル',
            )),
        TextButton(
            onPressed: () {
              Navigator.pop(context, 'OKが押されました。');
            },
            child: const Text('OK')),
      ],
    );
  }
}
