import 'package:flutter/material.dart';
import 'package:myapp/page_a.dart';
import 'package:myapp/page_b.dart';
import 'package:myapp/page_c.dart';

import 'package:go_router/go_router.dart';

void main() {
  final app = App();
  runApp(app);
}

class App extends StatelessWidget {
  App({super.key});

  final router = GoRouter(initialLocation: '/a', routes: [
    GoRoute(
      path: '/a',
      builder: (context, state) => PageA(),
    ),
    GoRoute(
      path: '/b',
      builder: (context, state) => PageB(),
    ),
    GoRoute(
      path: '/c',
      builder: (context, state) => PageC(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
