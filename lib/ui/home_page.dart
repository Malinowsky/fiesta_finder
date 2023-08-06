import 'package:fiesta_finder/responsive_helper.dart';
import 'package:fiesta_finder/screen_select.dart';
import 'package:fiesta_finder/ui/authentication/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../custom_button.dart';
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
                      CustomButton(onPressed: () => _navigateToNextScreen(context, SignUp()), text: "SIGN UP", colorBack: Colors.white, colorFore: Colors.black87,),
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
    final termsAndConditions = "Terms and Conditions";
    final privacyPolicy = "Privacy Policy";
    final cookiePolicy = "Cookie Policy";
    final troubleLoggingIn = "Trouble logging in?";

    final termsAndConditionsIndex = text.indexOf(termsAndConditions);
    final privacyPolicyIndex = text.indexOf(privacyPolicy);
    final cookiePolicyIndex = text.indexOf(cookiePolicy);
    final troubleLoggingInIndex = text.indexOf(troubleLoggingIn);

    final span = TextSpan(
      style: const TextStyle(
        fontFamily: "Helvetica",
        fontSize: 12,
        color: Colors.white,
      ),
      children: [
        if (troubleLoggingInIndex >= 0)
          TextSpan(
            text: text.substring(0, troubleLoggingInIndex),
          ),
        if (troubleLoggingInIndex >= 0)
          TextSpan(
            text: troubleLoggingIn,
            style: const TextStyle(
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Obsługa przekierowania dla "Trouble logging in?"
              },
          ),
        if (troubleLoggingInIndex >= 0 && termsAndConditionsIndex >= 0)
          TextSpan(
            text: text.substring(troubleLoggingInIndex + troubleLoggingIn.length, termsAndConditionsIndex),
          ),
        if (termsAndConditionsIndex >= 0)
          TextSpan(
            text: termsAndConditions,
            style: const TextStyle(
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Obsługa przekierowania do strony Terms and Conditions
              },
          ),
        if (termsAndConditionsIndex >= 0 && privacyPolicyIndex >= 0)
          TextSpan(
            text: text.substring(termsAndConditionsIndex + termsAndConditions.length, privacyPolicyIndex),
          ),
        if (privacyPolicyIndex >= 0)
          TextSpan(
            text: privacyPolicy,
            style: const TextStyle(
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Obsługa przekierowania do strony Privacy Policy
              },
          ),
        if (privacyPolicyIndex >= 0 && cookiePolicyIndex >= 0)
          TextSpan(
            text: text.substring(privacyPolicyIndex + privacyPolicy.length, cookiePolicyIndex),
          ),
        if (cookiePolicyIndex >= 0)
          TextSpan(
            text: cookiePolicy,
            style: const TextStyle(
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Obsługa przekierowania do strony Cookie Policy
              },
          ),
        if (cookiePolicyIndex >= 0)
          TextSpan(
            text: text.substring(cookiePolicyIndex + cookiePolicy.length),
          ),
      ],
    );

    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 250,
        alignment: Alignment.center,
        child: RichText(
          textAlign: TextAlign.center,
          text: span,
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context, nameClass) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => nameClass));
  }

}
