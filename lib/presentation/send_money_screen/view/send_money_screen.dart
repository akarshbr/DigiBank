import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/global_widget/global_meterial_btn.dart';
import 'package:digibank/global_widget/text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/global_text_style.dart';
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
            icon: const Icon(color: Colors.black, Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Center(
                  child: Text(
                    'digiBank.',
                    style: GLTextStyles.digiBankGrey,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 80),
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
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 10,
                                            bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText: 'Enter Account Number',
                                        )),
                                    const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 10,
                                            bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText: 'Re-enter Account Number',
                                        )),
                                    const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 10,
                                            bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText: 'Enter IFSC',
                                        )),
                                    const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 10,
                                            bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText:
                                              "Bank Account Holder's Name",
                                        )),
                                        const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 15,
                                            bottom: 15),
                                        child: TextFormFieldRefactor(
                                          hintText:
                                              "Enter Amount",
                                        )),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Center(
                                        child: SizedBox(
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
                      color: ColorTheme.white,
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(color: Color(0xFFb57e3d),
                            Icons.home_outlined,
                            size: 30,
                          ),
                          Text(
                            "Transfer to Bank",
                            style: GLTextStyles.maincolor16,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(color: Color(0xFFb57e3d),
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: SizedBox(
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
                                const AlwaysScrollableScrollPhysics(), // Enable scrolling
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                          top: 10,
                                          bottom: 10),
                                      child: TextFormFieldRefactor(
                                        hintText: "Enter Mobile Number",
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15,
                                            right: 15,
                                            top: 15,
                                            bottom: 15),
                                        child: TextFormFieldRefactor(
                                          hintText:
                                              "Enter Amount",
                                        )),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Center(
                                      child: SizedBox(
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
                        color: ColorTheme.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(color: Color(0xFFb57e3d),
                              Icons.phone_iphone_rounded,
                              size: 25,
                            ),
                            Text(
                              "Pay to Phone Number",
                              style: GLTextStyles.maincolor16,
                            ),
                            const Icon(color: Color(0xFFb57e3d),
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        )),
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
