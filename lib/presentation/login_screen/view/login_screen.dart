import 'package:digibank/global_widget/pin_and_otp_box.dart';
import 'package:digibank/global_widget/text_refactor.dart';
import 'package:digibank/presentation/registration_screen/view/registration.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../bottom_navigation_screen/view/bottom_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: size.height * .6,
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TextRefactor(
                text: "Login using MPIN",
                textSize: 22,
                textFontWeight: FontWeight.bold,
              ),
              const TextRefactor(text: "MPIN", textSize: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) => const PinAndOtpBox()),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => const BottomNavigation()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorTheme.mainClr,
                    padding: EdgeInsets.only(
                        left: size.width * .2,
                        right: size.width * .2,
                        top: size.height * .02,
                        bottom: size.height * .02),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                child: const TextRefactor(text: "Login", textSize: 16, textFontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const RegistrationScreen()));
                  },
                  child: const TextRefactor(text: "Forgot MPIN ?")),
            ],
          ),
        ),
      ),
    );
  }
}
