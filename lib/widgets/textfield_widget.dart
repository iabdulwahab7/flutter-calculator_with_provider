import 'package:calculator_app/utils/colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: TextField(
        controller: controller,
        readOnly: true,
        showCursor: false,
        decoration: const InputDecoration(
          fillColor: AppColor.calculatorColor,
          filled: true,
          border: InputBorder.none,
        ),
        style: const TextStyle(fontSize: 50),
      ),
    );
  }
}
