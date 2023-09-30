import 'package:flutter/material.dart';
import 'package:myapp/screens/home/home_screen.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter shop",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Gordita",
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.black54),
          ),
        ),
        home: const HomeScreen());
  }
}

