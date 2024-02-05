import 'package:flutter/material.dart';
import 'package:sliders/home.dart';
import 'package:sliders/introduction.dart';
// import 'package:';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroSliders(),
      debugShowCheckedModeBanner: false,
    );
  }
}
