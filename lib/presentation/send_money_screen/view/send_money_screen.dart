import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/global_widget/global_meterial_btn.dart';
import 'package:digibank/global_widget/text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorTheme.white,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(color: Colors.black, Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  height: size.height * .1,
                  width: size.width * .8,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            physics: AlwaysScrollableScrollPhysics(),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 10,
                                            bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText: 'Enter Account Number',
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 10,
                                            bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText: 'Re-enter Account Number',
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 10,
                                            bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText: 'Enter IFSC',
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 10,
                                            bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText:
                                              "Bank Account Holder's Name",
                                        )),
                                        Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 15,
                                            bottom: 15),
                                        child: TextFormFieldRefactor(
                                          hintText:
                                              "Enter Amount",
                                        )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Center(
                                        child: Container(
                                      width: size.width * .4,
                                      height: size.height * .05,
                                      child: GLMetrialButton(
                                          color: ColorTheme.darkClr,
                                          text: 'CONFIRM',
                                          txtClr: ColorTheme.white,
                                          style: GLTextStyles.subtitleWhite),
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: ColorTheme.lightgrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.home_outlined,
                            size: 30,
                          ),
                          Text(
                            "Transfer to Bank",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Container(
                  height: size.height * .1,
                  width: size.width * .8,
                  child: InkWell(
                    onTap: () {
                      // showModalBottomSheet(
                      //   context: context,
                      //   builder: (BuildContext context){
                      //     return Padding(
                      //       padding: const EdgeInsets.all(10.0),
                      //       child: Center(
                      //         child: Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Padding(
                      //                 padding: const EdgeInsets.only(
                      //                     left: 15,
                      //                     right: 15,
                      //                     top: 10,
                      //                     bottom: 10),
                      //                 child: TextFormFieldRefactor(
                      //                   hintText:
                      //                   "Enter Mobile Number",
                      //                 )),
                      //             SizedBox(height: 15,),
                      //             Center(
                      //                 child: Container(
                      //                   width: size.width*.3,
                      //                   height: size.height*.05,
                      //                   child: GLMetrialButton(
                      //                       color: ColorTheme.darkClr,
                      //                       text: 'PAY',
                      //                       txtClr: ColorTheme.white,
                      //                       style:GLTextStyles.subtitleWhite),
                      //                 )),
                      //           ],
                      //         ),
                      //       ),
                      //     );
                      //   },
                      // );
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled:
                            true, // Enable dragging to adjust height
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            // Wrap with SingleChildScrollView
                            physics:
                                AlwaysScrollableScrollPhysics(), // Enable scrolling
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                          top: 10,
                                          bottom: 10),
                                      child: TextFormFieldRefactor(
                                        hintText: "Enter Mobile Number",
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 15,
                                            bottom: 15),
                                        child: TextFormFieldRefactor(
                                          hintText:
                                              "Enter Amount",
                                        )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Center(
                                      child: Container(
                                        width: size.width * .3,
                                        height: size.height * .05,
                                        child: GLMetrialButton(
                                          color: ColorTheme.darkClr,
                                          text: 'PAY',
                                          txtClr: ColorTheme.white,
                                          style: GLTextStyles.subtitleWhite,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.phone_iphone_rounded,
                              size: 25,
                            ),
                            Text(
                              "Pay to Phone Number",
                              style: TextStyle(fontSize: 15),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                        color: ColorTheme.lightgrey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
