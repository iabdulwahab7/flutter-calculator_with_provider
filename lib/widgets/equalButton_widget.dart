import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:calculator_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EqualButton extends StatelessWidget {
  const EqualButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<CalculatorProvider>(context, listen: false).setValue("="),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: AppColor.apecialButtonColor,
        ),
        child: Center(
            child: Text(
          "=",
          style: TextStyle(fontSize: 32, color: AppColor.buttonTextColor),
        )),
      ),
    );
  }
}
