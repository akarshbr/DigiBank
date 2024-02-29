import 'package:digibank/presentation/account_summary/view/account_summary.dart';
import 'package:digibank/presentation/home/widget/icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/global_text_style.dart';
import '../../request_money/view/request_money.dart';
import '../../send_money_screen/view/send_money_screen.dart';

Container UsersFunctions(Size size, BuildContext context) {
  return Container(
    width: size.aspectRatio,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: ColorTheme.darkClr, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconBtn(context,
            route: SendMoney(),
            title: "Send Money",
            icon: FontAwesomeIcons.moneyBillTransfer,
            style: GLTextStyles.labeltxtwhite,
            color: ColorTheme.white),
        IconBtn(context,
            route: RequestMoney(),
            title: "Request Money",
            icon: FontAwesomeIcons.moneyCheck,
            style: GLTextStyles.labeltxtwhite,
            color: ColorTheme.white),
        IconBtn(context,
            route: AccountSummary(),
            title: "Account Summary",
            icon: FontAwesomeIcons.idCardClip,
            style: GLTextStyles.labeltxtwhite,
            color: ColorTheme.white),
        IconBtn(context,
            route: null,
            title: "More",
            icon: FontAwesomeIcons.ellipsis,
            color: ColorTheme.white,
            style: GLTextStyles.labeltxtwhite),
      ],
    ),
  );
}
