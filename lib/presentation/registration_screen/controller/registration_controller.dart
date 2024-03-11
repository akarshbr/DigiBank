import 'dart:developer';

import 'package:digibank/core/app_utils/app_utils.dart';
import 'package:digibank/presentation/login_screen/view/login_screen.dart';
import 'package:digibank/repository/api/registration_screen/services/registration_service.dart';
import 'package:flutter/material.dart';

class RegistrationController extends ChangeNotifier {
  Future onRegistration(
      String username, String accountNumber, var context) async {
    var data = {"username": username, "account_number": accountNumber};
    RegistrationService.postRegistratioonData(data).then((resData) {
      log("onRegistration ${resData["status"]}");
      if (resData["status"] == 1) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      } else {
        var message = resData["error"];
        AppUtils.oneTimeSnackBar(message, context: context);
      }
    });
  }
}
