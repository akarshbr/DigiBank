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
            icon: Icon(color: Colors.black, Icons.arrow_back),
          ),
      ),
      body: Center(
        child: Container(
          height: size.height * .5,
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TitleAndTextFormField(text: "Name"),
              TitleAndTextFormField(text: "Mobile Number"),
              Consumer<LoanTypeController>(builder: (context, operatorController, _) {
                return DropdownButton<String>(
                  padding: EdgeInsets.all(5),
                  isExpanded: true,
                  value: operatorController.loantypeSelected,
                  hint: Text("Select Loan Type"),
                  onChanged: (String? selectedLoantype) {
                    print('Selected Loan Type: $selectedLoantype');
                    operatorController.setOperator(selectedLoantype!);
                  },
                  items: dropdownItems,
                );
              }),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child:
                  TextRefactor(text: "PROCEED", textSize: 16, textFontWeight: FontWeight.bold),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorTheme.mainClr,
                      padding: EdgeInsets.only(
                          left: size.width * .2,
                          right: size.width * .2,
                          top: size.height * .02,
                          bottom: size.height * .02),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
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
    DropdownMenuItem(
        child: ListTile(
            title: Text("Home")),
        value: "Home"),
    DropdownMenuItem(
        child: ListTile(
            title: Text("Educational")),
        value: "Educational"),
    DropdownMenuItem(
        child: ListTile(
            title: Text("Vehicle")),
        value: "Vehicle"),
  ];
  return menuItems;
}

