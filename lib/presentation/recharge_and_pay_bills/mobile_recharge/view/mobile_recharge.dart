import 'package:digibank/global_widget/title_and_textformfield.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/global_text_style.dart';
import '../../../../global_widget/global_appbar.dart';
import '../../../../global_widget/text_refactor.dart';
import '../controller/operator_controller.dart';



class MobileRecharge extends StatelessWidget {
  const MobileRecharge({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GLAppBar(
        title: "Recharge",
        centerTitle: true,
        titleTextStyle: GLTextStyles.titleStyle,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Container(
          height: size.height * .5,
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TitleAndTextFormField(text: "Enter Mobile Number"),
              Consumer<OperatorController>(builder: (context, operatorController, _) {
                return DropdownButton<String>(
                  padding: EdgeInsets.all(5),
                  isExpanded: true,
                  value: operatorController.operatorSelected,
                  hint: Text("Select Operator"),
                  onChanged: (String? selectedOperator) {
                    print('Selected Operator: $selectedOperator');
                    operatorController.setOperator(selectedOperator!);
                  },
                  items: dropdownItems,
                );
              }),
              TitleAndTextFormField(text: "₹ Enter Amount"),
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

class Operator {
  static Map<String, dynamic> operators = {
    "Airtel": "asset/operator_icon/airtel.png",
    "BSNL": "asset/operator_icon/bsnl.png",
    "Jio": "asset/operator_icon/jio.png",
    "VI": "asset/operator_icon/vi.png"
  };
}
List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems =[
    DropdownMenuItem(child: ListTile(leading: Image(image: AssetImage("asset/operator_icon/airtel.png")),title: Text("Airtel")),value: "Airtel"),
    DropdownMenuItem(child: ListTile(leading: Image(image: AssetImage("asset/operator_icon/bsnl.png")),title: Text("BSNL")),value: "BSNL"),
    DropdownMenuItem(child: ListTile(leading: Image(image: AssetImage("asset/operator_icon/jio.png")),title: Text("Jio")),value: "Jio"),
    DropdownMenuItem(child: ListTile(leading: Image(image: AssetImage("asset/operator_icon/vi.png")),title: Text("data")),value: "VI")
  ];
  return menuItems;
}
