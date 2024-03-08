import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../app_config/app_config.dart';

class ApiHelper {
  static int? registrationStatus;
  //for post
  ///endpoint is applied olny if finalUrl is empty
  static postData({
    required String endPoint,
    Map<String, String>? header,
    required Map<String, dynamic> body,
  }) async {
    log("postData");
    log("$body");
    var url = Uri.parse(AppConfig.baseurl + endPoint);
    // var url = Uri.parse("http://10.11.0.186:8000/");
    try {
      var response = await http.post(url, body: body);
      log("Api Called => status code=${response.statusCode}");
      registrationStatus = response.statusCode;
      if (response.statusCode == 200) {
        var data = response.body;
        var decodedData = jsonDecode(data);
        log(decodedData["status"].toString());
        return decodedData;
      } else {
        log("Else Condition -> Api failed");
        var data = response.body;
        var decodedData = jsonDecode(data);
        log(decodedData["status"].toString());
        return decodedData;
      }
    } catch (e) {
      log("$e");
    }
  }
}
