// ignore_for_file: unnecessary_string_interpolations

import 'package:digibank/core/constants/global_text_style.dart';
import 'package:flutter/material.dart';

Widget transactionTile(String type, String time, String status, String amount) {
  return ListTile(
    title: Text(
      "$type",
      style: GLTextStyles.labeltxtBlk16,
    ),
    subtitle: Text(
      '$time\n$status',
      style: GLTextStyles.subtitleGrey,
    ),
    trailing: Text(
      "$amount",
      style: GLTextStyles.labeltxtBlk16,
    ),
  );
}
