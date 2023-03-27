import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lite_book/data/src/constants.dart';

class ImageAsset extends StatelessWidget {
  const ImageAsset({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Image.asset(
        fit: BoxFit.contain,
        imagePath,
        scale: 2,
      ),
    );
  }
}
