import 'package:digibank/global_widget/title_and_textformfield.dart';
import 'package:digibank/presentation/recharge_and_pay_bills/electricity/controller/electricity_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/global_text_style.dart';
import '../../../../global_widget/global_appbar.dart';
import '../../../../global_widget/text_refactor.dart';

class ElectricityBillsScreen extends StatelessWidget {
  const ElectricityBillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GLAppBar(
        title: "Electricity",
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
              Consumer<ElectricityController>(builder: (builder, electricityController, _) {
                return DropdownButton(
                    padding: EdgeInsets.all(5),
                    isExpanded: true,
                    items: dropDownItems,
                    value: electricityController.providerSelected,
                    onChanged: (String? selectedProvider) {
                      electricityController.setProvider(selectedProvider!);
                    });
              }),
              TitleAndTextFormField(text: "Enter Consumer Number"),
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

List<DropdownMenuItem<String>> get dropDownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(
        child: ListTile(
            leading: Image(width: 30, image: AssetImage("asset/electricity_icon/KSEB_Logo.png")),
            title: Text("KSEB")),
        value: "KSEB"),
    DropdownMenuItem(
        child: ListTile(
            leading:
                Image(width: 30, image: AssetImage("asset/electricity_icon/Tata_Power_Logo.png")),
            title: Text("TATA Power")),
        value: "TATA Power"),
    DropdownMenuItem(
        child: ListTile(
            leading: Image(width: 30, image: AssetImage("asset/electricity_icon/adaniPower.png")),
            title: Text("ADANI Power")),
        value: "ADANI Power"),
  ];
  return menuItems;
}
