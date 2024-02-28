import 'package:carousel_slider/carousel_slider.dart';
import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/global_widget/global_appbar.dart';
import 'package:digibank/presentation/home/controller/home_controler.dart';
import 'package:digibank/presentation/home/widget/icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../global_widget/drawer_refactored.dart';
import '../widget/advertisment_slider.dart';
import '../widget/buttons_for_loan.dart';
import '../widget/tools_to_use.dart';
import '../widget/user_details.dart';
import '../widget/user_function.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: GLAppBar(
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView(
          children: [
            //users functions card  TODO => add accountsummary page route in the below card
            UsersFunctions(size, context),
            SizedBox(
              height: size.height * .05,
            ),
            //user details TODO=> add page routes
            UserDetailsCard(size),
            SizedBox(
              height: size.height * .05,
            ),
            Text(
              "Recharge & Pay Bills",
              style: GLTextStyles.subtitleBlk,
            ),
            SizedBox(
              height: size.height * .05,
            ),
            //tools like recharge etc
            ToolsToUse(size: size),
            SizedBox(
              height: size.height * .05,
            ),
            Text(
              "Loans",
              style: GLTextStyles.subtitleBlk,
            ),
            SizedBox(
              height: size.height * .02,
            ),
            //buttons like emiCalculator and credi score
            ButtonsForLoan(size: size,),
            SizedBox(
              height: size.height * .04,
            ),
            // crousel slider for advertisment
            AdvertismentSlider(size: size)
          ],
        ),
      ),
    ));
  }
}

