import 'dart:developer';

import 'package:digibank/core/app_utils/app_utils.dart';
import 'package:digibank/presentation/login_screen/view/login_screen.dart';
import 'package:digibank/repository/helper/api_helper.dart';
import 'package:flutter/material.dart';

class RegistrationController extends ChangeNotifier {
  registrationPostData(
      String username, String accountNumber, var context) async {
    var data = {"username": username, "account_number": accountNumber};
    try {
      var decodedData = await ApiHelper.postData(
          endPoint: "password-reset-view/", body: data);
      var message = decodedData["message"];
      if (decodedData["status"] == 1) {
        log("RegistrationController>registrationPostData()>success = $message");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const LoginScreen()));
      } else {
        log(decodedData["status"].toString());
        log("RegistrationController>registrationPostData()>failed ");
        var error = decodedData["error"];
        AppUtils.oneTimeSnackBar(error, context: context);
      }
    } catch (e) {
      log("$e");
    }
  }
}
