import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/global_widget/global_appbar.dart';
import 'package:digibank/presentation/bottom_navigation_screen/controller/bottom_nav_controller.dart';
import 'package:digibank/presentation/profile_screen/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    Provider.of<ProfileController>(context).fetchProfileData();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: GLAppBar(
              title: "PROFILE",
              centerTitle: true,
              titleTextStyle: GLTextStyles.titleStyle,
              leading: Consumer<BottomNavigationController>(
                builder: (context, bControl, child) {
                  return IconButton(
                      onPressed: () {
                        bControl.currentIndex = 0;
                      },
                      icon: const Icon(Icons.arrow_back));
                },
              )),
          body: Consumer<ProfileController>(
            builder: (context, pControl, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      width: size.width * .95,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: ColorTheme.darkClr,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Account No.",
                                style: GLTextStyles.bodyTextwhite,
                              ),
                              Text(
                                "${pControl.accNo}",
                                style: GLTextStyles.subtitleWhite2,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "IFSC",
                                style: GLTextStyles.bodyTextwhite,
                              ),
                              Text(
                                pControl.ifsc,
                                style: GLTextStyles.subtitleWhite2,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Personal Details",
                          style: GLTextStyles.titleTextBlk,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Customer ID",
                          style: GLTextStyles.subtitleGrey,
                        ),
                        Text(
                          "${pControl.id}",
                          style: GLTextStyles.subtitleBlk14,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Name",
                          style: GLTextStyles.subtitleGrey,
                        ),
                        Text(
                          "${pControl.username}",
                          style: GLTextStyles.subtitleBlk14,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Mobile Number",
                          style: GLTextStyles.subtitleGrey,
                        ),
                        Text(
                          "+91 ${pControl.mobileNo}",
                          style: GLTextStyles.subtitleBlk14,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Email",
                          style: GLTextStyles.subtitleGrey,
                        ),
                        Text(
                          "${pControl.mailid}",
                          style: GLTextStyles.subtitleBlk14,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }
}
