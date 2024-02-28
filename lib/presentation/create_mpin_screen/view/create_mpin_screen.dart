import 'package:digibank/presentation/login_screen/view/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../global_widget/pin_and_otp_box.dart';
import '../../../global_widget/text_refactor.dart';

class CreateMpin extends StatelessWidget {
  const CreateMpin({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height * .6,
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextRefactor(
                text: "Create Your MPIN",
                textSize: 22,
                textFontWeight: FontWeight.bold,
              ),
              TextRefactor(text: "MPIN", textSize: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) => PinAndOtpBox(gap: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: TextRefactor(text: "NEXT", textSize: 16, textFontWeight: FontWeight.bold),
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorTheme.mainClr,
                    padding: EdgeInsets.only(
                        left: size.width * .2,
                        right: size.width * .2,
                        top: size.height * .02,
                        bottom: size.height * .02),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
