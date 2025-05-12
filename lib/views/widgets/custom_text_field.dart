import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTexFeild extends StatelessWidget {
  const CustomTexFeild({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xffFAFAFA),
        filled: true,
        hintText: hint,
        hintStyle: AppStyles.textRegular16(context).copyWith(color: Color(0xffAAAAAA)),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Color(0xfffafafa)),
    );
  }
}
