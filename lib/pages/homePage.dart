import 'package:fiesta_finder/screenSelect.dart';
import 'package:flutter/material.dart';

import '../customButton.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 300,
                  height: 300,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/fiesta.jpg")))),
              SizedBox(
                height: ScreenSelect.height60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(onPressed: () => {}, text: "SIGN IN"),
                  SizedBox(height: ScreenSelect.height10),
                  CustomButton(onPressed: () => {}, text: "SIGN UP"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
