import 'package:flutter/material.dart';
import 'package:whatsapp/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff008069)
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen()
    );
  }
}
