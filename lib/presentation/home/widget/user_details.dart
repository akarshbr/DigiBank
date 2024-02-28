import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/global_text_style.dart';

Container UserDetailsCard(Size size) {
  return Container(
    width: size.aspectRatio,
    padding: EdgeInsets.only(left: 8, right: 8, top: 15, bottom: 5),
    decoration: BoxDecoration(
      color: ColorTheme.white,
      border: Border.all(
        color: ColorTheme.black,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.9),
          spreadRadius: 3,
          blurRadius: 5,
          offset: Offset(0, 5), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Account",
          style: GLTextStyles.bodyTextGrey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "USERNAME",
              style: GLTextStyles.titleTextBlk,
            ),
            TextButton(
                onPressed: () {
                  // TODO
                },
                child: Text(
                  "View All Accounts",
                  style: GLTextStyles.bodyTextGrey,
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "8437xxxxx748",
              style: GLTextStyles.subtitleBlk,
            ),
            TextButton(
                onPressed: () {
                  // TODO
                },
                child: Text(
                  "View Balance",
                  style: GLTextStyles.bodyTextGrey,
                ))
          ],
        )
      ],
    ),
  );
}
