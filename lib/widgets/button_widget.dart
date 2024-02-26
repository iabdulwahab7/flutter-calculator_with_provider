import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:calculator_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class buttonWidget extends StatelessWidget {
  const buttonWidget(
      {super.key, required this.title, this.textColor = Colors.white});

  final String title;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(title),
      child: Material(
        elevation: 3,
        color: AppColor.calculatorColor,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 38,
          backgroundColor: AppColor.buttonColor,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
