// import 'package:flutter/material.dart';
// import 'custom_text.dart';

// class CustomButtomSocial extends StatelessWidget {
//   final String text;
//   final String image;
//   final Function()? onPress;
//   const CustomButtomSocial({Key? key, required this.text, required this.image, required this.onPress})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.grey.shade100,
//       ),
//       child: RawMaterialButton(
//         onPressed: onPress,
//         child: Row(children: [
//           Image.asset(image),
//           const SizedBox(
//             width: 70,
//           ),
//           CustomText(
//             text: text,
//           )
//         ]),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       ),
//     );
//   }
// }
