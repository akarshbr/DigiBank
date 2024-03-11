import 'dart:developer';

import 'package:digibank/app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../repository/api/login_screen/services/login_services.dart';

class LoginController extends ChangeNotifier {
  late SharedPreferences sharedPreferences;
  Future onLogin(String mpin) async {
    log("started onlogin from logincontroller");
    fetchusername().then((userName) {
      log("Shared preferance data>> $userName");
      var data = {"username": userName, "mpin": mpin};
      LoginService.postLoginData(data).then((resData) {
        log("LoginController>>onLogin ${resData["status"]}");
      });
    });
  }

  Future<String> fetchusername() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var uname = sharedPreferences.getString(AppConfig.userName);
    log("fetchusername >> ${uname!}");
    return uname;
  }
}
