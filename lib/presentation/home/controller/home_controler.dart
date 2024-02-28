import 'package:digibank/core/static_data/static_data.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  var imageList = [
    "asset/images/carousal1.jpg",
    "asset/images/carousal2.jpg",
    "asset/images/carousal3.jpg",
    "asset/images/carousal4.jpg",
  ];
  final String _username = StaticData.username;
  final int _accNo = StaticData.accNo;
  final int _balance = StaticData.balance;

  String get username => _username;
  int get accNo => _accNo;
  int get balance => _balance;
}
