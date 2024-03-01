import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/global_widget/global_appbar.dart';
import 'package:digibank/presentation/profile_screen/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: GLAppBar(
            title: "PROFILE",
            centerTitle: true,
            titleTextStyle: GLTextStyles.titleStyle,
            leading: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back)),
          ),
          body: Consumer<ProfileController>(
            builder: (context, pControl, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      width: size.width * .95,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                  SizedBox(
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
                        SizedBox(
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
                        SizedBox(
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
                        SizedBox(
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
                        SizedBox(
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
