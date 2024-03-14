import 'package:digibank/core/constants/global_text_style.dart';
import 'package:digibank/global_widget/global_meterial_btn.dart';
import 'package:digibank/global_widget/text_form_field.dart';
import 'package:digibank/presentation/mpin_validation_screen/view/mpin_validation_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    var accountNumberController = TextEditingController();
    var reEnterAccountNumberController = TextEditingController();
    var receiversUserNameController = TextEditingController();
    var amountController = TextEditingController();
    var ifscController = TextEditingController();
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
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
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
                                    Padding(
                                        padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText: 'Enter Account Number',
                                          textEditingController: accountNumberController,
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText: 'Re-enter Account Number',
                                          textEditingController: reEnterAccountNumberController,
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText: 'Enter IFSC',
                                          textEditingController: ifscController,
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                                        child: TextFormFieldRefactor(
                                          hintText: "Receivers Username",
                                          textEditingController: receiversUserNameController,
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                                        child: TextFormFieldRefactor(
                                          hintText: "Enter Amount",
                                          textEditingController: amountController,
                                        )),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width: size.width * .4,
                                        height: size.height * .05,
                                        child: GLMetrialButton(
                                            route: MpinValidationScreen(
                                              accountNumber: accountNumberController.text.trim(),
                                              reEnterAccountNumber: reEnterAccountNumberController.text.trim(),
                                              ifsc: ifscController.text.trim(),
                                              receiversUsername: receiversUserNameController.text.trim(),
                                              amount: amountController.text.trim(),
                                            ),
                                            color: ColorTheme.darkClr,
                                            text: 'CONFIRM',
                                            txtClr: ColorTheme.white,
                                            style: GLTextStyles.subtitleWhite),
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
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      color: ColorTheme.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            color: Color(0xFFb57e3d),
                            Icons.home_outlined,
                            size: 30,
                          ),
                          Text(
                            "Transfer to digiBank",
                            style: GLTextStyles.maincolor16,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            color: Color(0xFFb57e3d),
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
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true, // Enable dragging to adjust height
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            // Wrap with SingleChildScrollView
                            physics: const AlwaysScrollableScrollPhysics(), // Enable scrolling
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                                      child: TextFormFieldRefactor(
                                        hintText: "Enter Mobile Number",
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                                        child: TextFormFieldRefactor(
                                          hintText: "Enter Amount",
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
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        color: ColorTheme.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              color: Color(0xFFb57e3d),
                              Icons.phone_iphone_rounded,
                              size: 25,
                            ),
                            Text(
                              "Transfer to different Bank",
                              style: GLTextStyles.maincolor16,
                            ),
                            const Icon(
                              color: Color(0xFFb57e3d),
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
