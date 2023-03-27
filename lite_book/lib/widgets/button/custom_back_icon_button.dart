import 'package:flutter/material.dart';

class CustomBackIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomBackIconButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
