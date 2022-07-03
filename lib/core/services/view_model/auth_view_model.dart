import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthViewModel extends GetxController {
  // GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  // FacebookLogin _facebookLogin = FacebookLogin();
  String? email, password, name;

  // RXObjext
  // in Statefull Widget
  // Replace Init State
  // أول م بنادي علي الكنترولار بستخدمها
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  // بنادي عليها لما الويدجيت  لما يكون اتعملها ريندر فالسكرين
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

// بيتنادي عليها لما الكنترولار بيتعملو ديليت من الميموري
  // Replace Dispose
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  // void googleSignInMethod() async {
  //   final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //   print(googleUser);

  //   GoogleSignInAuthentication? googleSignInAuthentication =
  //       await googleUser?.authentication;

    // final AuthCredential credential = GoogleAuthProvider.credential(
    //   idToken: googleSignInAuthentication?.idToken,
    //   accessToken: googleSignInAuthentication?.accessToken,
    // );

  //   UserCredential userCredential =
  //       await _auth.signInWithCredential(credential);
  //   print('${userCredential.user}');
  // }

  // void facebookSignInMethod() async {
  //   FacebookLoginResult result = await _facebookLogin.logIn(['email']);
  //   final accessToken = result.accessToken.token;
  //   if (result.status == FacebookLoginStatus.loggedIn) {
  //     final faceCedential = FacebookAuthProvider.credential(accessToken);

  //     await _auth.signInWithCredential(faceCedential);
  //   }
  // }

  void signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email!, password: password!);
    } catch (e) {
      Get.snackbar('Error Login account', e.toString(),
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
    }
  }
}
