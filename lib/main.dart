
import 'package:fiesta_finder/customButton.dart';
import 'package:fiesta_finder/screenSelect.dart';
import 'package:flutter/material.dart';
import 'colorSelect.dart';
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
      theme: ThemeData(
        backgroundColor: ColorSelect.white
      ),
      home: const MyHomePage(title: 'FIESTA TIME'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(image: AssetImage("assets/logo.jpg")),
            SizedBox(height: ScreenSelect.height250,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(onPressed: () => {}, text: "SIGN IN"),
                SizedBox(height: ScreenSelect.height10), // Dodatkowy odstęp między przyciskami
                CustomButton(onPressed: () => {}, text: "SIGN UP"),
              ],
            )
          ],
        ),
      ),
    );
  }

}
