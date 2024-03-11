import 'dart:async';

import 'package:digibank/presentation/registration_screen/view/registration.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => RegistrationScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
            height: size.height*.4,
            child: Image.asset(
              'asset/splash/DB.png',
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
