import 'dart:convert';
import 'dart:developer';

import 'package:digibank/core/static_data/static_data.dart';
import 'package:digibank/repository/api/profile_screen/model/profile_model.dart';
import 'package:digibank/repository/api/profile_screen/services/profile_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../app_config/app_config.dart';

class HomeScreenController extends ChangeNotifier {
  var imageList = [
    "asset/images/carousal1.jpg",
    "asset/images/carousal2.jpg",
    "asset/images/carousal3.jpg",
    "asset/images/carousal4.jpg",
  ];
  late ProfileModel profileModel = ProfileModel();
  final _fillMessage = StaticData.errorMsg;
  late Map<String, dynamic> userData;
  late SharedPreferences sharedPreferences;
  bool isLoading = false;
  fetchProfileDataHomeScreen() async {
    isLoading = true;
    notifyListeners();
    sharedPreferences = await SharedPreferences.getInstance();
    var uData = sharedPreferences.getString(AppConfig.userData);
    log("HomeScreenController>>fetch username >> ${uData!}");
    var uId = userData["id"];
    log("$uId");
    final response = await ProfileService.fetchProfile(uId);
    Map<String, dynamic> decodedData = {};
    if (response["status"] == 1) {
      log("+++++++++++++++++++++");
      decodedData = jsonDecode(response["data"]);
      log("$decodedData");
    } else {
      log("failed");
    }
    profileModel = ProfileModel.fromJson(decodedData);
    isLoading = false;
    notifyListeners();
  }

  String? get firstName => profileModel.firstName;
  String? get lastName => profileModel.lastName ?? _fillMessage;
  String? get username => profileModel.username ?? _fillMessage;
  int? get accNo => profileModel.accountNumber;
  double? get balance => profileModel.accountBalance;
  String? get address => profileModel.address ?? _fillMessage;
  String? get ifsc => profileModel.ifsc;
  int? get mobileNo => profileModel.phone;
  String? get mailid => profileModel.email ?? _fillMessage;
}
