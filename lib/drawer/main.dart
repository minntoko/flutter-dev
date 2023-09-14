import 'package:flutter/material.dart';
import 'package:myapp/drawer/side_menu.dart';

void main() {
  final a = MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('data'),
          ),
          drawer: const Drawer(
            child: SideMenu(),
          ),
          body: const Center(
            child: Text("ドロワー"),
          )));

  runApp(a);
}
