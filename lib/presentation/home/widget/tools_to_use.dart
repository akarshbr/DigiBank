
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/global_text_style.dart';
import 'icon_btn.dart';

class ToolsToUse extends StatelessWidget {
  const ToolsToUse({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.aspectRatio,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //TODO
          IconBtn(context,
              route: null,
              title: "Recharge",
              icon: FontAwesomeIcons.mobileScreen,
              style: GLTextStyles.labeltxtBlk16,
              color: ColorTheme.black),
          IconBtn(context,
              route: null,
              title: "Electricity",
              icon: FontAwesomeIcons.lightbulb,
              style: GLTextStyles.labeltxtBlk16,
              color: ColorTheme.black),
          IconBtn(context,
              route: null,
              title: "Credit Card",
              icon: FontAwesomeIcons.creditCard,
              style: GLTextStyles.labeltxtBlk16,
              color: ColorTheme.black),
          IconBtn(context,
              route: null,
              title: "More",
              icon: FontAwesomeIcons.ellipsis,
              style: GLTextStyles.labeltxtBlk16,
              color: ColorTheme.black)
        ],
      ),
    );
  }
}