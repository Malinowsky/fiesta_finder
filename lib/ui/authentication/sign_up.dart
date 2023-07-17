import 'package:fiesta_finder/responsive_helper.dart';
import 'package:flutter/material.dart';

import '../../custom_button.dart';
import '../../custom_textfield.dart';
import '../../screen_select.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        mobile: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
          ),
          child: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomTextField(
                    controller: TextEditingController(),
                    labelText: 'Name',
                    backgroundColor: Colors.transparent,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: ScreenSelect.height20,
                  ),
                  CustomTextField(
                    controller: TextEditingController(),
                    labelText: 'Surname',
                    backgroundColor: Colors.transparent,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: ScreenSelect.height20,
                  ),
                  CustomTextField(
                    controller: TextEditingController(),
                    labelText: 'E-mail',
                    backgroundColor: Colors.transparent,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: ScreenSelect.height20,
                  ),
                  CustomTextField(
                    controller: TextEditingController(),
                    labelText: 'Password',
                    backgroundColor: Colors.transparent,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: ScreenSelect.height20,
                  ),
                  CustomTextField(
                    controller: TextEditingController(),
                    labelText: 'Password',
                    backgroundColor: Colors.transparent,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: ScreenSelect.height20,
                  ),
                  CustomButton(
                    onPressed: () => {},
                    text: "SIGN UP",
                    colorBack: Colors.white,
                    colorFore: Colors.black87,
                  ),
                ],
              ),
            ),
          ),
        ),
        tab: Container(),
        desktop: Container(),
      ),
    );
  }
}
