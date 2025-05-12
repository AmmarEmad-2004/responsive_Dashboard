import 'package:flutter/widgets.dart';

abstract class AppStyles {
  static TextStyle textRegular16(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context: context, fontSize: 16),
        fontWeight: FontWeight.w400,
        color: Color(0xFF064061),
        fontFamily: 'Montserrat',
      );

  static TextStyle textMedium16(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context: context, fontSize: 16),
        fontWeight: FontWeight.w500,
        color: Color(0xFF064061),
        fontFamily: 'Montserrat',
      );

  static TextStyle textSemiBold16(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context: context, fontSize: 16),
        fontWeight: FontWeight.w600,
        color: Color(0xFF064061),
        fontFamily: 'Montserrat',
      );

  static TextStyle textBold16(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context: context, fontSize: 16),
        fontWeight: FontWeight.w700,
        color: Color(0xFF4EB7F2),
        fontFamily: 'Montserrat',
      );

  static TextStyle textSemiBold18(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context: context, fontSize: 18),
        fontWeight: FontWeight.w600,
        color: Color(0xFFFFFFFF),
        fontFamily: 'Montserrat',
      );

  static TextStyle textMedium20(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context: context, fontSize: 20),
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFFFFF),
        fontFamily: 'Montserrat',
      );

  static TextStyle textSemiBold20(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context: context, fontSize: 20),
        fontWeight: FontWeight.w600,
        color: Color(0xFF064060),
        fontFamily: 'Montserrat',
      );

  static TextStyle textSemiBold24(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context: context, fontSize: 24),
        fontWeight: FontWeight.w600,
        color: Color(0xFF4EB7F2),
        fontFamily: 'Montserrat',
      );

  static TextStyle textRegular12(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context: context, fontSize: 12),
        fontWeight: FontWeight.w400,
        color: Color(0xFFAAAAAA),
        fontFamily: 'Montserrat',
      );

  static TextStyle textRegular14(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context: context, fontSize: 14),
        fontWeight: FontWeight.w400,
        color: Color(0xFFAAAAAA),
        fontFamily: 'Montserrat',
      );
}

double getResponsiveFontSize({required BuildContext context, required double fontSize}) {
  double scaleFactor = getScaleFactor(context: context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor({required BuildContext context}) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 800) {
    return width / 550;
  } else if (width < 1250) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}