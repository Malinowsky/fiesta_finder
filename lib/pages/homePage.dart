import 'package:fiesta_finder/responsiveHelper.dart';
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
      body: ResponsiveWidget(
        mobile: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
          ),
          child: SafeArea(
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
                              image: AssetImage("assets/pngegg.png")))),
                  SizedBox(
                    height: ScreenSelect.height60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(onPressed: () => {}, text: "SIGN IN", colorBack: Colors.transparent, colorFore: Colors.white,),
                      SizedBox(height: ScreenSelect.height20),
                      CustomButton(onPressed: () => {}, text: "SIGN UP", colorBack: Colors.white, colorFore: Colors.black87,),
                      SizedBox(height: ScreenSelect.height20),
                      buildText("Trouble logging in?"),
                      SizedBox(height: ScreenSelect.height30),
                      buildText("By logging in or registering, you accept our Terms and Conditions. Information on how we use your data can be found in our Privacy Policy and Cookie Policy.")
                    ],
                  )
                ],
              ),
            ),
          ),
        ), tab:  Container(), desktop: Container(),
      ),
    );
  }

  Widget buildText(String text) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 250,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Helvetica",
            fontSize: 12,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }


}
