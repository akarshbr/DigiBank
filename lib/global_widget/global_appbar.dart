import 'package:digibank/core/constants/colors.dart';
import 'package:flutter/material.dart';
class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centerTitle;

  GlobalAppBar({
    this.title,
    this.leading,
    this.actions, 
    this.centerTitle=true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title!, style: TextStyle(
        fontFamily: 'Poppins',
      ),),
      centerTitle: centerTitle,
      backgroundColor: ColorTheme.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20))),
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
