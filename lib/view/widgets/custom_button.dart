import 'package:ecommere_finalapp/const.dart';
import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(18),
      onPressed: onPressed,
      fillColor: primaryColor,
      child: CustomText(
        text: text,
        alignment: Alignment.center,
        color: Colors.white,
      ),
    );
  }
}
