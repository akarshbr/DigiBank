import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/presentation/home_screen/controller/home_controler.dart';
import 'package:digibank/presentation/home_screen/view/widget/advertisment_slider.dart';
import 'package:digibank/presentation/home_screen/view/widget/buttons_for_loan.dart';
import 'package:digibank/presentation/home_screen/view/widget/tools_to_use.dart';
import 'package:digibank/presentation/home_screen/view/widget/user_details.dart';
import 'package:digibank/presentation/home_screen/view/widget/user_function.dart';
import 'package:digibank/presentation/profile_screen/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
        body: Consumer<ProfileController>(builder: (context, pControl, _) {
          return pControl.isLoading ? const Center(child: CircularProgressIndicator()) : HomeWidget(size: size);
        }),
      ),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key, required this.size});

  final Size size;

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  void initState() {
    fetchData(context);
    super.initState();
  }

  fetchData(context) {
    Provider.of<HomeScreenController>(context, listen: false).fetchProfileDataHomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    var homeScreenController = Provider.of<ProfileController>(context);
    String? fullName = "${homeScreenController.firstName} ${homeScreenController.lastName}";
    int? accountNumber = homeScreenController.accNo;
    double? balance = homeScreenController.balance;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ListView(
        children: [
          //users functions card
          UsersFunctions(widget.size, context),
          SizedBox(height: widget.size.height * .05),
          //user details
          userDetailsCard(widget.size, fullName, accountNumber!, balance!),
          SizedBox(height: widget.size.height * .05),
          Text("Recharge & Pay Bills", style: GLTextStyles.subtitleBlk),
          SizedBox(height: widget.size.height * .05),
          //tools like recharge etc
          ToolsToUse(size: widget.size),
          SizedBox(height: widget.size.height * .05),
          Text("Loans", style: GLTextStyles.subtitleBlk),
          SizedBox(height: widget.size.height * .02),
          //buttons like emiCalculator and credit score
          ButtonsForLoan(size: widget.size),
          SizedBox(height: widget.size.height * .04),
          // carousel slider for advertisement
          AdvertisementSlider(size: widget.size)
        ],
      ),
    );
  }
}
