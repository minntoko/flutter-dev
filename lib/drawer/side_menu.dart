import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DrawerHeader(
          child: Text('ドロワーヘッダー'),
        ),
        ListTile(
          title: Text('リストタイルA'),
        ),
        ListTile(
          title: Text('リストタイルB'),
        ),
        ListTile(
          title: Text('リストタイルC'),
        ),
      ],
    );
  }
}
