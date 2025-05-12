import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHeaderOption extends StatelessWidget {
  const CustomHeaderOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyles.textRegular16(context)),
          SizedBox(width: 18),
          Transform.rotate(
            angle: -1.57079633,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064061),
            ),
          ),
        ],
      ),
    );
  }
}
