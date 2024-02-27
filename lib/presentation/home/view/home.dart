import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/global_widget/global_appbar.dart';
import 'package:digibank/presentation/send_money_screen/view/send_money_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../global_widget/drawer_refactored.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: GlobalAppBar(
        title: 'Welcome',
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined)),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: DrawerRefactored(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
        child: ListView(
          children: [
            Container(
              width: size.width * .9,
              height: size.width * .22,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: ColorTheme.darkClr,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  cardIcon(context,
                      route: SendMoney(),
                      title: "Send Money",
                      icon: FontAwesomeIcons.moneyBillTransfer),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Column cardIcon(BuildContext context,
      {required route, required title, required icon}) {
    return Column(
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => route));
            },
            icon: FaIcon(
              // FontAwesomeIcons.moneyBillTransfer
              icon,
              color: ColorTheme.white,
            )),
        Text(
          title,
          style: GlobalTextStyles.labeltxt,
        )
      ],
    );
  }
}
