import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PinAndOtpBox extends StatelessWidget {
   PinAndOtpBox({super.key, required this.textEditingController,});

  //final double gap;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 64,
      width: 64,
      margin: EdgeInsets.symmetric(horizontal: size.width*.02),
      decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: TextFormField(
          controller: textEditingController,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          decoration: const InputDecoration(
            border: InputBorder.none
          ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}
