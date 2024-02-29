import 'package:digibank/global_widget/global_meterial_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/colors.dart';



class ButtonsForLoan extends StatelessWidget {
  const ButtonsForLoan({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GLMetrialButton(
              width: size.width * .35,
              height: size.height * .065,
              color: ColorTheme.darkClr,
              icon: FontAwesomeIcons.calculator,
              text: "EMI Calculator"),
          GLMetrialButton(
              width: size.width * .35,
              height: size.height * .065,
              color: ColorTheme.darkClr,
              icon: FontAwesomeIcons.magnifyingGlassChart,
              text: "Credit Score"),
        ],
      ),
    );
  }
}
