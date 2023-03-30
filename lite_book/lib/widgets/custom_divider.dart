import 'package:flutter/material.dart';

import '../data/src/strings.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
            child: Divider(
          color: Colors.white,
        )),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(or),
        ),
        Expanded(
            child: Divider(
          color: Colors.white,
        )),
      ],
    );
  }
}
