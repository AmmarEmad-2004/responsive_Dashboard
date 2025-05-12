import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.title,
    this.backgroundColor,
    this.color,
  });
  final String title;
  final Color? backgroundColor, color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
        ),
        child: Text(
          title,
          style: AppStyles.textSemiBold18(context).copyWith(
            color: color ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
