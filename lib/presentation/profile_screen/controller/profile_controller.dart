import 'dart:convert';
import 'dart:developer';
import 'package:digibank/core/app_utils/app_utils.dart';
import 'package:digibank/repository/api/profile_screen/model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../app_config/app_config.dart';
import '../../../core/static_data/static_data.dart';
import '../../../repository/api/profile_screen/services/profile_service.dart';

class ProfileController extends ChangeNotifier {
  late ProfileModel profileModel = ProfileModel();
  late SharedPreferences sharedPreferences;
  final _fillMessage = StaticData.errorMsg;

  late Map<String, dynamic> userData;

  fetchProfileData(context) async {
    log("ProfileController>>fetchProfileData");
    fetchUserdetails().then((rawData) {
      userData = json.decode(rawData);
      var uId = userData["id"];
      log("$uId");
      ProfileService.fetchProfile(uId).then((resData) {
        if (resData["status"] == 1) {
          profileModel = ProfileModel.fromJson(resData["data"]);
        } else {
          AppUtils.oneTimeSnackBar("Error: Data Not Found ", context: context);
        }
        notifyListeners();
      });
      notifyListeners();
    });
    notifyListeners();
  }

  String? get username => profileModel.username??_fillMessage;
  int? get accNo => profileModel.accountNumber;
  double? get balance => profileModel.accountBalance;
  String? get address => profileModel.address??_fillMessage;
  String? get ifsc => profileModel.ifsc;
  int? get mobileNo => profileModel.phone;
  String? get mailid => profileModel.email??_fillMessage;

  Future<String> fetchUserdetails() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var uData = sharedPreferences.getString(AppConfig.userData);
    log("ProfileController>>fetchusername >> ${uData!}");
    return uData;
  }
}
