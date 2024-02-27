import 'package:digibank/core/constants/colors.dart';
import 'package:digibank/core/constants/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centertitle;

  GlobalAppBar({
    this.title,
    this.leading,
    this.actions, 
    this.centertitle=true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title!,
       style: GlobalTextStyles.titleStyl),
      centerTitle: centertitle,
      backgroundColor: ColorTheme.white,
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
