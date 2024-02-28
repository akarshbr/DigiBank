import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/global_widget/global_appbar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: GLAppBar(title: "Profile",centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: Column(
            children: [
              Container(
                width: size.width*.95,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  color: ColorTheme.darkClr,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Account No.",style: GLTextStyles.bodyTextGrey,),
                        Text("3456xxxxxx2334",style: GLTextStyles.subtitleWhite,)
                      ],
                      
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("IFSC",style: GLTextStyles.bodyTextGrey,),
                        Text("XYZ0000581",style: GLTextStyles.subtitleWhite,)
                      ],
                      
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
