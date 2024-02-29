import 'package:flutter/material.dart';

import '../../../../core/constants/global_text_style.dart';
import '../../../../global_widget/global_appbar.dart';

class WaterBillsScreen extends StatelessWidget {
  const WaterBillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GLAppBar(
        title: "Water",
        centerTitle: true,
        titleTextStyle: GLTextStyles.titleStyle,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(child: Text("Water")),
    );
  }
}
