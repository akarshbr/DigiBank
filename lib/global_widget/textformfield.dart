import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class GlobalTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final int? maxLines;
  final Key? formkey;
  final Widget? suffixIcon;
  final bool readonly;
  final String? hintText;
  final bool obscuretext;
  final List<TextInputFormatter>? inputFormatters;

  GlobalTextfield({
    super.key,
    this.controller,
    this.labelText,
    this.keyboardType,
    this.validator,
    this.maxLines,
    this.formkey,
    this.suffixIcon,
    required this.readonly,
    this.hintText,
    required this.obscuretext,
    required this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
