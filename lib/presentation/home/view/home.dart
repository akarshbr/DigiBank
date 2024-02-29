import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/global_widget/global_appbar.dart';
import 'package:flutter/material.dart';

import '../../../global_widget/drawer_refactored.dart';
import '../widget/advertisment_slider.dart';
import '../widget/buttons_for_loan.dart';
import '../widget/tools_to_use.dart';
import '../widget/user_details.dart';
import '../widget/user_function.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: GLAppBar(
          title: 'DigiBank',
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
          //buttons like emiCalculator and credit score
          ButtonsForLoan(
            size: size,
          ),
          SizedBox(
            height: size.height * .04,
          ),
          // carousel slider for advertisement
          AdvertismentSlider(size: size)
        ],
      ),
    );
  }
}
