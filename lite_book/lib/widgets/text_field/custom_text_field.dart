import 'package:flutter/material.dart';
import 'package:lite_book/data/src/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.preffix,
      required this.labelText,
      required this.textEditingController,
      required this.obsecureText});

  final IconData preffix;
  final String labelText;
  final TextEditingController textEditingController;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: mainAppColor.withOpacity(0.1)),
          ],
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: TextField(
          textInputAction: TextInputAction.next,
          obscureText: obsecureText,
          autocorrect: true,
          decoration: InputDecoration(
              fillColor: Colors.white.withOpacity(0.1),
              filled: true,
              contentPadding: const EdgeInsets.all(4),
              labelStyle: const TextStyle(color: Colors.white),
              label: Text(labelText),
              border: InputBorder.none,
              prefixIcon: Icon(
                preffix,
                color: mainAppColor,
              )),
        ),
      ),
    );
  }
}
