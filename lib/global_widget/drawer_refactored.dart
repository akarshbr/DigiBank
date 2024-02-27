import 'package:flutter/material.dart';
import '../core/constants/colors.dart';

class DrawerRefactored extends StatelessWidget {
  const DrawerRefactored({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width*.6,
      backgroundColor: ColorTheme.white,
      child: Column(
        children: [],
      ),
    );
  }
}
