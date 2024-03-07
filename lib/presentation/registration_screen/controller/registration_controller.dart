import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegistrationController extends ChangeNotifier {
  postData(String username,String acc) async {
    print("object");
    var url = Uri.parse("http://10.0.2.2:8081/password-reset-view/");
    // try {
    // print("object2");
    var response = await http
        .post(url, body: {"username": username, "account_number": acc});
    // print("${response.body}");
    var data = response.body;
    var decodeddata = jsonDecode(data);
    var asd = decodeddata['message'];
    print(asd);
    // print("asd");
    // print("object3");
    // } catch (e) {
    //   print("error ${e}");
    // }
  }
}
