import 'package:flutter/material.dart';
import '../widgets/constant.dart';

class TextBox extends StatelessWidget {
  final bool obscureText;
  final String text;

  const TextBox({super.key, required this.obscureText, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
            fillColor: Colors.transparent,
            labelText: text,
            labelStyle: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600))));
  }
}

class RowText extends StatelessWidget {
  final String text;
  final double iconSize;

  const RowText({super.key, required this.text, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(child: Container()),
        Icon(Icons.arrow_forward_ios, color: Colors.blueAccent, size: iconSize)
      ],
    );
  }
}

Widget myTextField(String hinttext, BuildContext context) {
  return TextFormField(
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.only(left: 10, top: 12),
      hintText: hinttext,
      hintStyle: TextStyle(
        color: Colors.grey[700],
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: MyThemeColor.textColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: MyThemeColor.textColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: MyThemeColor.textColor),
      ),
    ),
  );
}

Widget labelText(String text, double size, Color? color) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold,
    ),
  );
}
