import 'package:digibank/global_widget/text_refactor.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/global_text_style.dart';
import '../../../global_widget/global_appbar.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GLAppBar(
        title: "TRANSACTIONS",
        centerTitle: true,
        titleTextStyle: GLTextStyles.titleStyle,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(child: TextRefactor(text: "Transaction")),
    );
  }
}
