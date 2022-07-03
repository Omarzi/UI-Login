import 'package:ecommere_finalapp/const.dart';
import 'package:ecommere_finalapp/core/services/view_model/auth_view_model.dart';
import 'package:ecommere_finalapp/view/widgets/custom_button.dart';
import 'package:ecommere_finalapp/view/widgets/custom_button_social.dart';
import 'package:ecommere_finalapp/view/widgets/custom_text.dart';
import 'package:ecommere_finalapp/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Form(
          key: _formKey,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText(
                  text: 'Welcome,',
                  fontSize: 30,
                ),
                CustomText(
                  text: 'Sign Up',
                  color: primaryColor,
                  fontSize: 18,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomText(
              text: 'Sign in to Continue',
              color: Colors.grey,
              fontSize: 14,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              text: 'Email',
              hintText: 'shopemail@gmail.com',
              onSaved: (value) {
                controller.email = value;
              },
              validator: (value) {
                if (value == null) {
                  print('ERROR');
                }
              },
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextFormField(
              text: 'Password',
              hintText: '********',
              onSaved: (value) {
                controller.password = value;
              },
              validator: (value) {
                if (value == null) {
                  print('error');
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomText(
              text: 'Forget Passwor?',
              fontSize: 14,
              alignment: Alignment.topRight,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Sign In',
              onPressed: () {
                _formKey.currentState?.save();
                if (_formKey.currentState!.validate()) {
                  controller.signInWithEmailAndPassword();
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            // const CustomText(
            //   text: '-OR-',
            //   alignment: Alignment.center,
            // ),
            // const SizedBox(
            //   height: 40,
            // ),
            // CustomButtomSocial(
            //   text: 'Sign In with Facebook',
            //   image: 'assets/face_book.png',
            //   onPress: () {},
            // ),
            // const SizedBox(
            //   height: 40,
            // ),
            // CustomButtomSocial(
            //   text: 'Sign In with Google',
            //   image: 'assets/google.png',
            //   onPress: () {
            //     controller.googleSignInMethod();
            //   },
            // ),
          ]),
        ),
      ),
    );
  }
}
