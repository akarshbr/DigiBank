import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/core/constants/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GLMetrialButton extends StatelessWidget {
  const GLMetrialButton(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      this.txtClr,
      required this.icon,
      required this.text});
  final width;
  final height;
  final color;
  final Color? txtClr;
  final icon;
  final text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
      },
      minWidth: width,
      height: height,
      color: color,
      textColor: txtClr,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FaIcon(
            icon,
            color: ColorTheme.white,
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: GLTextStyles.labeltxtwhite,
          ),
        ],
      ),
    );
  }
}
