import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/global_widget/global_appbar.dart';
import 'package:flutter/material.dart';

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
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: size.width * .95,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                            "3456xxxxxx2334",
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
                            "XYZ0000581",
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
                      style: GLTextStyles.bodyTextblack,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Customer ID",
                      style: GLTextStyles.subtitleGrey,
                    ),
                    Text(
                      "A5322478",
                      style: GLTextStyles.subtitleBlk2,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Name",
                      style: GLTextStyles.subtitleGrey,
                    ),
                    Text(
                      "USERNAME",
                      style: GLTextStyles.subtitleBlk2,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Mobile Number",
                      style: GLTextStyles.subtitleGrey,
                    ),
                    Text(
                      "+91 9547325695",
                      style: GLTextStyles.subtitleBlk2,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Email",
                      style: GLTextStyles.subtitleGrey,
                    ),
                    Text(
                      "abc@gnail.com",
                      style: GLTextStyles.subtitleBlk2,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
