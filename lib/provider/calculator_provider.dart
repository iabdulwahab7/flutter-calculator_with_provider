import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final calController = TextEditingController();

  setValue(String value) {
    String str = calController.text;

    switch (value) {
      case "AC":
        calController.clear();
        break;
      case "C":
        calController.text = str.substring(0, str.length - 1);
        break;
      case "X":
        calController.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        calController.text += value;
        break;
    }
  }

  compute() {
    String txt = calController.text;

    //through function tree we get interpret that will compute
    calController.text = txt.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    calController.dispose();
  }
}
