import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/global_text_style.dart';

Widget dateSection(String date) {
    return Container(
      color: ColorTheme.grey.withOpacity(.5),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        date,
        style: GLTextStyles.labeltxtBlk12
      ),
    );
  }