import 'dart:developer';

import 'package:digibank/presentation/bottom_navigation_screen/view/bottom_navigation.dart';
import 'package:digibank/repository/api/send_money_screen/services/send_money_services.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../app_config/app_config.dart';
import '../../../core/app_utils/app_utils.dart';

class SendMoneyController extends ChangeNotifier {
  late SharedPreferences sharedPreferences;

  Future onSend(String accountNumber, String reEnterAccountNumber, String ifsc, String receiversUsername,
      String amount, String mpin,BuildContext context) async {
    fetchUsername().then((username) {
      var data = {
        "sender_user": username,
        "account_number": accountNumber,
        "confirm_account_number": reEnterAccountNumber,
        "ifsc": ifsc,
        "receiving_account_holder_name": receiversUsername,
        "amount": amount,
        "mpin": mpin
      };
      SendMoneyService.postTransactionData(data).then((recData) {
        log("SendMoneyController>>${recData["message"]}");
        if (recData["message"] == "fund tranfered succesfully") {
          Navigator.pushAndRemoveUntil(
              context, MaterialPageRoute(builder: (context) => BottomNavigation()), (route) => false);
        }else{
          AppUtils.oneTimeSnackBar("failed", context: context);
          log("LoginController>>onLogin>>failed");
        }
      });
    });
  }

  Future<String> fetchUsername() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var uname = sharedPreferences.getString(AppConfig.userName);
    log("fetchusername >> ${uname!}");
    return uname;
  }
}
