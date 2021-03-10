import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static const double textsize96 = 96.0;
  static const double textsize60 = 60.0;
  static const double textsize50 = 50.0;
  static const double textsize48 = 48.0;
  static const double textsize44 = 44.0;
  static const double textsize40 = 40.0;
  static const double textsize36 = 36.0;
  static const double textsize34 = 34.0;
  static const double textsize32 = 32.0;
  static const double textsize30 = 30.0;
  static const double textsize28 = 28.0;
  static const double textsize24 = 24.0;
  static const double textsize22 = 22.0;
  static const double textsize20 = 20.0;
  static const double textsize18 = 18.0;
  static const double textsize17 = 17.0;
  static const double textsize16 = 16.0;
  static const double textsize14 = 14.0;
  static const double textsize12 = 12.0;
  static const double textsize10 = 10.0;
  static const double textsize8 = 8.0;
  static const Color blackColor = Color(0xFF333333);
  static const Color greyColor = Color(0xFF999999);
  static const Color greyColorBab = Color(0xFF898989);
  static const Color redColor = Color(0xFFE08080);
  static const Color orange = Color(0xFFFFC38B);
  static const Color primaryColor = Color(0xFF8856AC);
  static const Color primaryText = Color(0xFF2C2C78);

  static TextStyle customTextStyle({
    Color color = primaryText,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = textsize14,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle customTextStyle2({
    Color color = primaryText,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = textsize16,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle cardTitleTextStyle({
    Color color = greyColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize14,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle cardBodyTextStyle({
    Color color = blackColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize14,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle titleTextStyle({
    Color color = greyColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize14,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle bodyTextStyle({
    Color color = blackColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize17,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle chatUserNameStyle({
    Color color = blackColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize17,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle chatSubCategoryStyle({
    Color color = blackColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize14,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle chatMessageStyle({
    Color color = blackColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize14,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle chatTitleDateStyle({
    Color color = greyColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize12,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle chatDateStyle({
    Color color = greyColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize10,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle inputHintTextStyle({
    Color color = greyColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize14,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle inputTextStyle({
    Color color = blackColor,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize14,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle inputTitleTextStyle({
    Color color = blackColor,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = textsize14,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle babIconTitle({
    Color color = greyColorBab,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = textsize10,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle bigTitlePrimary({
    Color color = primaryText,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = textsize22,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle homeButtonTextStyle({
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.w300,
    double fontSize = 13,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle homeTitleStyle({
    Color color = primaryText,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = 17,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Color iconColor() => Colors.black.withOpacity(0.7);

  static Color dividerColor() => Colors.grey.shade300;
}
