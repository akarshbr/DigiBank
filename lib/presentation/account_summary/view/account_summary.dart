import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/global_text_style.dart';
import '../../../global_widget/global_appbar.dart';

void main() {
  runApp(MaterialApp(
    home: AccountSummary(),
  ));
}

class AccountSummary extends StatelessWidget {
  const AccountSummary({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: GLAppBar(
        title: "Account Summary",
        centerTitle: true,
        titleTextStyle: GLTextStyles.titleStyle,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              width: size.width * .75,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: ColorTheme.darkClr,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Balance",
                    style: GLTextStyles.bodyTextwhite,
                  ),
                  Center(
                    child: Text(
                      "₹ 2518.61",
                      style: GLTextStyles.subtitleWhite,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Total Savings and Deposits",
                      style: GLTextStyles.subtitleWhite3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
