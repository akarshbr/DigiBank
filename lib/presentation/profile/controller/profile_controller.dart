import 'package:flutter/material.dart';

import '../../../core/static_data/static_data.dart';

class ProfileControl extends ChangeNotifier {
  final String _username = StaticData.username;
  final int _accNo = StaticData.accNo;
  final int _balance = StaticData.balance;
  final int _id = StaticData.id;
  final String _ifsc = StaticData.ifsc;
  final int _mobileNo = StaticData.mobileNo;
  final String _mailId = StaticData.mailid;

  String get username => _username;
  int get accNo => _accNo;
  int get balance => _balance;
  int get id => _id;
  String get ifsc => _ifsc;
  int get mobileNo => _mobileNo;
  String get mailid => _mailId;
}
