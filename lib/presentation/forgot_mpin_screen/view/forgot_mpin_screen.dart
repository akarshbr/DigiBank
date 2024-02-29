import 'package:digibank/global_widget/title_and_textformfield.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../global_widget/text_refactor.dart';
import '../../bottom_navigation/view/bottom_navigation.dart';

class ForgotMpinScreen extends StatelessWidget {
  const ForgotMpinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height * .4,
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: TextRefactor(
                    text: "Forgot MPIN ?", textSize: 22, textFontWeight: FontWeight.bold),
              ),
              TitleAndTextFormField(text: "Enter Your Mobile Number"),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => BottomNavigation()));
                  },
                  child: TextRefactor(text: "Login", textSize: 16, textFontWeight: FontWeight.bold),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorTheme.mainClr,
                      padding: EdgeInsets.only(
                          left: size.width * .2,
                          right: size.width * .2,
                          top: size.height * .02,
                          bottom: size.height * .02),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
