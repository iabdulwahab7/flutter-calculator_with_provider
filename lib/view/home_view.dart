// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:calculator_app/utils/colors.dart';
import 'package:calculator_app/widgets/bottonList.dart';
import 'package:calculator_app/widgets/equalButton_widget.dart';
import 'package:calculator_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final padding = EdgeInsets.symmetric(vertical: 25, horizontal: 30);
    final decoration = BoxDecoration(
        color: AppColor.calculatorColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));
    return Consumer<CalculatorProvider>(builder: (context, value, _) {
      return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 50,
              ),
              TextFieldWidget(
                controller: value.calController,
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                height: height * 0.58,
                padding: padding,
                decoration: decoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          List.generate(4, (index) => buttonList[index + 4]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          List.generate(4, (index) => buttonList[index + 8]),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    3, (index) => buttonList[index + 12]),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    3, (index) => buttonList[index + 15]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        EqualButton(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
