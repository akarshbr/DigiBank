import 'package:flutter/material.dart';

import '../../../global_widget/global_appbar.dart';

class RequestLoanScreen extends StatelessWidget {
  const RequestLoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
