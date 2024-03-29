import 'package:fiesta_finder/ui/home_page.dart';
import 'package:fiesta_finder/ui/secondhome.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../ui/authentication/sign_up.dart';

class AuthService {
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if(snapshot.hasData){
            return SecondHome();
          }else{
            return const HomePage();
          }
        });
  }

  signInWithGoogle() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    UserCredential userCredential =await FirebaseAuth.instance.signInWithCredential(credential);

    print(userCredential.user?.displayName);


    // // Trigger the authentication flow
    // final GoogleSignInAccount? googleUser = await GoogleSignIn(
    //     scopes: <String>["email"]).signIn();
    //
    // // Obtain the auth details from the request
    // final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    //
    // // Create a new credential
    // final credential = GoogleAuthProvider.credential(
    //   accessToken: googleAuth.accessToken,
    //   idToken: googleAuth.idToken,
    // );
    //
    // // Once signed in, return the UserCredential
    // return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  signOut() {
    FirebaseAuth.instance.signOut();
  }
}
