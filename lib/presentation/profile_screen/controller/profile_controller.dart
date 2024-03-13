import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../app_config/app_config.dart';
import '../../../core/static_data/static_data.dart';
import '../../../repository/api/profile_screen/services/profile_service.dart';

class ProfileController extends ChangeNotifier {
  late SharedPreferences sharedPreferences;

  late Map<String, dynamic> userData;
  final int _id = StaticData.id;
  final String _username = StaticData.username;
  final int _accNo = StaticData.accNo;
  final int _balance = StaticData.balance;

  final String _ifsc = StaticData.ifsc;
  final int _mobileNo = StaticData.mobileNo;
  final String _mailId = StaticData.mailid;

  fetchProfileData() async {
    log("ProfileController>>fetchProfileData");
    fetchUserdetails().then((rawData) {
      userData = json.decode(rawData);
      var uId = userData["id"];
      ProfileService.fetchProfile(uId);
    });
  }

  String get username => _username;
  int get accNo => _accNo;
  int get balance => _balance;
  int get id => _id;
  String get ifsc => _ifsc;
  int get mobileNo => _mobileNo;
  String get mailid => _mailId;

  Future<String> fetchUserdetails() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var uData = sharedPreferences.getString(AppConfig.userData);
    log("fetchusername >> ${uData!}");
    return uData;
  }
}
