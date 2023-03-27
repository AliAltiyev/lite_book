import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [TextButton(onPressed: () {}, child: Text('Skip'))]);
  }
}
