import 'dart:developer';

import 'package:digibank/presentation/request_loan_screen/controller/loan_type_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/colors.dart';
import '../../../global_widget/global_appbar.dart';
import '../../../global_widget/text_refactor.dart';
import '../../../global_widget/title_and_textformfield.dart';

class RequestLoanScreen extends StatelessWidget {
  const RequestLoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GLAppBar(
        title: "Request Loan Here",
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(color: Colors.black, Icons.arrow_back),
          ),
      ),
      body: Center(
        child: SizedBox(
          height: size.height * .5,
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TitleAndTextFormField(text: "Name"),
              const TitleAndTextFormField(text: "Mobile Number"),
              Consumer<LoanTypeController>(builder: (context, operatorController, _) {
                return DropdownButton<String>(
                  padding: const EdgeInsets.all(5),
                  isExpanded: true,
                  value: operatorController.loantypeSelected,
                  hint: const Text("Select Loan Type"),
                  onChanged: (String? selectedLoantype) {
                    log('Selected Loan Type: $selectedLoantype');
                    operatorController.setOperator(selectedLoantype!);
                  },
                  items: dropdownItems,
                );
              }),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorTheme.mainClr,
                      padding: EdgeInsets.only(
                          left: size.width * .2,
                          right: size.width * .2,
                          top: size.height * .02,
                          bottom: size.height * .02),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  child:
                  const TextRefactor(text: "PROCEED", textSize: 16, textFontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(
        value: "Home",
        child: ListTile(
            title: Text("Home"))),
    const DropdownMenuItem(
        value: "Educational",
        child: ListTile(
            title: Text("Educational"))),
    const DropdownMenuItem(
        value: "Vehicle",
        child: ListTile(
            title: Text("Vehicle"))),
  ];
  return menuItems;
}

