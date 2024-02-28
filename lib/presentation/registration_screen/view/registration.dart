import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/global_widget/text_form_field.dart';
import 'package:digibank/global_widget/text_refactor.dart';
import 'package:digibank/presentation/create_mpin_screen/view/create_mpin_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: TextRefactor(
                    text: "Register your account", textSize: 22, textFontWeight: FontWeight.bold),
              ),
              TextRefactor(text: "Account Number", textSize: 18),
              TextFormFieldRefactor(),
              TextRefactor(text: "Mobile Number", textSize: 18),
              TextFormFieldRefactor(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => CreateMpin()));
                  },
                  child:
                      TextRefactor(text: "SIGN IN", textSize: 16, textFontWeight: FontWeight.bold),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorTheme.mainClr,
                      padding: EdgeInsets.only(
                          left: size.width * .2,
                          right: size.width * .2,
                          top: size.height * .02,
                          bottom: size.height * .02),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
