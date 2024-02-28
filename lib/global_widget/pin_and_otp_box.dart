import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PinAndOtpBox extends StatelessWidget {
  const PinAndOtpBox({super.key, this.gap = 1});

  final double gap;

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Container(
      height: 64,
      width: 64,
      margin: EdgeInsets.only(left: gap),
      decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          border: InputBorder.none
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
