import 'package:digibank/presentation/recharge_and_pay_bills/electricity/view/electricity_bills_screen.dart';
import 'package:digibank/presentation/recharge_and_pay_bills/water/view/water_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/global_text_style.dart';
import '../../../recharge_and_pay_bills/mobile_recharge/view/mobile_recharge.dart';
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
              route: MobileRecharge(),
              title: "Recharge",
              icon: FontAwesomeIcons.mobileScreen,
              style: GLTextStyles.labeltxtBlk16,
              color: ColorTheme.black),
          IconBtn(context,
              route: ElectricityBillsScreen(),
              title: "Electricity",
              icon: FontAwesomeIcons.lightbulb,
              style: GLTextStyles.labeltxtBlk16,
              color: ColorTheme.black),
          IconBtn(context,
              route: WaterBillsScreen(),
              title: "Water",
              icon: FontAwesomeIcons.faucetDrip,
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
