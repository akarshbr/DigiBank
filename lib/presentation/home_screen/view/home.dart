import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/presentation/home_screen/view/widget/advertisment_slider.dart';
import 'package:digibank/presentation/home_screen/view/widget/buttons_for_loan.dart';
import 'package:digibank/presentation/home_screen/view/widget/tools_to_use.dart';
import 'package:digibank/presentation/home_screen/view/widget/user_details.dart';
import 'package:digibank/presentation/home_screen/view/widget/user_function.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../global_widget/drawer_refactored.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('digiBank',
              style: GoogleFonts.leagueSpartan(
                color: ColorTheme.darkClr,
                fontSize: 23.0,
                fontWeight: FontWeight.w600,
              )),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  // TODO
                },
                icon: const Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  // TODO
                },
                icon: const Icon(Icons.logout_outlined)),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        drawer: const DrawerRefactored(),
        body: HomeWidget(size: size),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ListView(
        children: [
          //users functions card
          UsersFunctions(size, context),
          SizedBox(
            height: size.height * .05,
          ),
          //user details
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
          //buttons like emiCalculator and credit score
          ButtonsForLoan(
            size: size,
          ),
          SizedBox(
            height: size.height * .04,
          ),
          // carousel slider for advertisement
          AdvertisementSlider(size: size)
        ],
      ),
    );
  }
}
