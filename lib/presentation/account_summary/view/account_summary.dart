import 'package:digibank/presentation/account_summary/controller/account_summary_control.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/global_text_style.dart';
import '../../../global_widget/global_appbar.dart';
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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Consumer<ACCSumaryCantrol>(
        builder: (context, ASControl, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: size.width * .95,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: ColorTheme.darkClr,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Balance",
                        textAlign: TextAlign.center,
                        style: GLTextStyles.bodyTextwhite,
                      ),
                      Center(
                        child: Text(
                          "${ASControl.balance}",
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
              SizedBox(
                height: 10,
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
                            "${ASControl.accNo}",
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
                            ASControl.ifsc,
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
                      "${ASControl.id}",
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
                      "${ASControl.username}",
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
                      "+91 ${ASControl.mobileNo}",
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
                      "${ASControl.mailid}",
                      style: GLTextStyles.subtitleBlk14,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
