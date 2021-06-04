import 'package:aba_mobile/sceen/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ABA Mobile",
      theme: ThemeData(
        primaryColor: Color(0xFF005D86),
        accentColor: Color(0xFF005071),
      ),
      home: HomePage()
    );
  }
}
