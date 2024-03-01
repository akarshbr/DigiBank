import 'dart:math';
import 'package:flutter/material.dart';

class CreditScrController extends ChangeNotifier {
  late double value;

  CreditScrController() {
    generateRandomValue();
  }

  void generateRandomValue() {
    Random random = Random();
    value = 300.0 + random.nextDouble() * (900.0 - 300.0);
    value= double.parse(value.toStringAsFixed(0));
    notifyListeners();
  }
}
