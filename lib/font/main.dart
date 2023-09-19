import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // OFL を守るために このコードが必要
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString(
      'assets/google_fonts/OFL.txt',
    );
    debugPrint(license);
    yield LicenseEntryWithLineBreaks(
      ['google_fonts'],
      license,
    );
  });
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Text(
      'バナナ美味しい',
      style: GoogleFonts.hachiMaruPop(
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
    );
    return Scaffold(
      appBar: AppBar(title: const Text('hello')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text,
          ElevatedButton(
              onPressed: () {
                showLicensePage(context: context);
              },
              child: const Text('ボタン'))
        ],
      )),
    );
  }
}
