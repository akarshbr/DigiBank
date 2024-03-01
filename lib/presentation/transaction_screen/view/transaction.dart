import 'package:digibank/presentation/transaction_screen/controller/transaction_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/global_text_style.dart';
import '../../../global_widget/global_appbar.dart';
import '../widget/datesection.dart';
import '../widget/transaction_tile.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GLAppBar(
          title: "TRANSACTIONS",
          centerTitle: true,
          titleTextStyle: GLTextStyles.titleStyle,
        ),
        body:
        //  Consumer<TransactionController>(
        //   builder: (context, tControl, child) {
        //     return ListView.separated(
        //         itemBuilder: (context, index) {
        //           return dateSection(tControl.transactionData[index]["date"]);
        //         },
        //         separatorBuilder: (context, index) {
        //           return transactionTile(
        //               tControl.transactionData[index]["type"],
        //               tControl.transactionData[index]["date"],
        //               tControl.transactionData[index]["description"],
        //               tControl.transactionData[index]["amount"]);
        //         },
        //         itemCount: tControl.transactionData.length);
        //   },
        // )
        ListView(
          children: <Widget>[
            dateSection('12 May 2021'),
            transactionTile('Paid', '2:30 PM', 'SUCCESS', '210'),
            transactionTile('Received', '11:00 AM', 'SUCCESS', '30'),
            transactionTile('Paid', '8:30 PM', 'SUCCESS', '800'),
            dateSection('08 May 2021'),
            transactionTile('Paid', '2:30 PM', 'SUCCESS', '120'),
            transactionTile('Received', '11:00 AM', 'SUCCESS', '90'),
            transactionTile('Paid', '8:30 PM', 'SUCCESS', '200'),
          ],
        ),
        );
  }
}
