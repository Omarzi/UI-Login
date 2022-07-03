import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  CustomTextFormField(
      {Key? key,
      required this.text,
      required this.hintText,
      required this.onSaved,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              helperStyle: const TextStyle(color: Colors.black),
              fillColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
