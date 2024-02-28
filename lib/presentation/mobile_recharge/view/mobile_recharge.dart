import 'package:flutter/material.dart';

import '../../../core/constants/global_text_style.dart';
import '../../../global_widget/global_appbar.dart';

class Rechrage extends StatelessWidget {
  const Rechrage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GLAppBar(
        title: "Recharge",
        centerTitle: true,
        titleTextStyle: GLTextStyles.titleStyle,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}
