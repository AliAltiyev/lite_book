import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.color});

  final VoidCallback onPressed;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      child: MaterialButton(
        onPressed: onPressed,
        height: 54,
        minWidth: 327,
        color: color,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Text(text),
      ),
    );
  }
}
