// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackAndNextButtons extends StatelessWidget {
  final VoidCallback? backCallback;
  final VoidCallback nextCallBAck;
  final String? buttonText;
  const BackAndNextButtons({
    Key? key,
    this.backCallback,
    this.buttonText,
    required this.nextCallBAck,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: backCallback,
            child: const Text(
              'BACK',
              style: TextStyle(color: Colors.white24),
            ),
          ),
          ElevatedButton(
            onPressed: nextCallBAck,
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xff8875FF))),
            child: Text(buttonText == null ? 'Next' : buttonText!),
          )
        ],
      ),
    );
  }
}
