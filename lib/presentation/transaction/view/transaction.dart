import 'package:digibank/global_widget/text_refactor.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TextRefactor(text: "Transaction")),
    );
  }
}
