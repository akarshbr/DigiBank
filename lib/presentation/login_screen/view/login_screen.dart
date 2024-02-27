import 'package:digibank/global_widget/pin_and_otp_box.dart';
import 'package:digibank/global_widget/text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height*.6,
          width: size.width*0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextRefactor(
                text: "Login using MPIN",
                textSize: 20,
                textFontWeight: FontWeight.bold,
              ),
              TextRefactor(text: "MPIN"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) => PinAndOtpBox(gap: 20)),
              ),
              ElevatedButton(onPressed: () {}, child: TextRefactor(text: "Login")),
              TextButton(onPressed: () {}, child: TextRefactor(text: "Forgot MPIN?")),
            ],
          ),
        ),
      ),
    );
  }
}
