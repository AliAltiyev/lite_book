import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.preffix,
      required this.labelText,
      required this.textEditingController});

  final IconData preffix;
  final String labelText;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          color: Color(0xff1D1D1D),
        ),
        child: TextField(
          autocorrect: true,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              labelStyle: const TextStyle(color: Colors.white),
              label: Text(labelText),
              border: InputBorder.none,
              prefix: Icon(preffix)),
        ),
      ),
    );
  }
}
