import 'package:fiesta_finder/customButton.dart';
import 'package:fiesta_finder/screenSelect.dart';
import 'package:fiesta_finder/pages/starterPage.dart';
import 'package:flutter/material.dart';
import 'colorSelect.dart';
import 'pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(backgroundColor: ColorSelect.white),
      home: const StarterPage(),
    );
  }

}
