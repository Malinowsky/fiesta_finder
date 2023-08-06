import 'package:fiesta_finder/responsive_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../app/services/auth_service.dart';
import '../../custom_button.dart';
import '../../custom_textfield.dart';
import '../../screen_select.dart';
import 'login_page.dart';

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
                  SizedBox(
                    height: ScreenSelect.height20,
                  ),
                  custom_button_with_icon("assets/google.png","CONTINUE WITH GOOGLE",() {signInWithGooglev2();}),
                  SizedBox(
                    height: ScreenSelect.height20,
                  ),
                  custom_button_with_icon("assets/applev2.png","CONTINUE WITH APPLE", () {}),
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

  Container custom_button_with_icon(String asset, String text, onPressed) {
    return Container(
                  height: 45,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 1.5),
                    color: Colors.white,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(0),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                    ),
                    onPressed: onPressed,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image(
                            image: AssetImage(asset),
                            width: 25,
                            height: 25,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Helvetica",
                              fontSize: 16,
                              color: Colors.black87
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
  }

  signInWithGooglev2() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithCredential(credential);

    print(userCredential.user?.displayName);

    if (userCredential.user != null) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }
}
