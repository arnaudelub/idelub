import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../styles/styles.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.indigo;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.purple.withOpacity(0.12);

  static ThemeData lightThemeData = themeData(lightColorScheme,
      _lightFocusColor, _lightAppBarTheme, _lightFabThemeData);

  static ThemeData darkThemeData = themeData(
    darkColorScheme,
    _darkFocusColor,
    _darkAppBarTheme,
    _darkFabThemeData,
  );

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor,
      AppBarTheme appBarTheme, FloatingActionButtonThemeData fabTheme) {
    final hintTextStyle = Styles.chatMessageStyle().copyWith(
      color: Styles.greyColor,
    );
    final counterStyle = _textTheme.caption!.copyWith(
      fontWeight: _light,
    );

    return ThemeData(
        fontFamily: 'Montserrat',
        backgroundColor: colorScheme.background,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: colorScheme.primary,
          selectionColor: colorScheme.primary,
          selectionHandleColor: colorScheme.primary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          counterStyle: counterStyle,
          hintStyle: hintTextStyle,
        ),
        colorScheme: colorScheme,
        primaryColor: colorScheme.primary,
        textTheme: _textTheme,
        iconTheme: const IconThemeData(color: Colors.purple),
        canvasColor: colorScheme.background,
        scaffoldBackgroundColor: colorScheme.background,
        highlightColor: Colors.transparent,
        accentColor: colorScheme.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        focusColor: Styles.primaryColor,
        appBarTheme: appBarTheme,
        splashColor: colorScheme.primary,
        hintColor: Styles.greyColor,
        floatingActionButtonTheme: fabTheme,
        buttonColor: Styles.primaryText,
        tabBarTheme: tabBarTheme,
        buttonTheme: buttonTheme);
  }

  static const TabBarTheme tabBarTheme = TabBarTheme(
    labelPadding: EdgeInsets.symmetric(vertical: 24),
    unselectedLabelColor: Colors.white,
    labelStyle: TextStyle(fontWeight: _bold, fontSize: 32),
    unselectedLabelStyle: TextStyle(fontSize: 32, fontWeight: _bold),
    labelColor: Styles.primaryText,
  );
  static ButtonThemeData buttonTheme = ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    buttonColor: Styles.primaryText,
    splashColor: Colors.black,
    padding: const EdgeInsets.all(14.0),
  );
  static ColorScheme lightColorScheme = ColorScheme(
    primary: Styles.primaryText,
    primaryVariant: const Color(0xFF666666).withOpacity(.7),
    secondary: const Color(0xFF716969),
    secondaryVariant: Colors.black,
    background: Colors.white,
    surface: const Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: const Color(0xFF322942),
    onSurface: const Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Colors.purple,
    primaryVariant: Colors.purpleAccent,
    secondary: Colors.indigoAccent,
    secondaryVariant: Colors.red,
    background: Colors.blueGrey,
    surface: Colors.purpleAccent,
    onBackground: Colors.white,
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: Colors.purpleAccent,
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const _superBold = FontWeight.w900;
  static const _bold = FontWeight.w700;
  static const _semiBold = FontWeight.w600;
  static const _medium = FontWeight.w500;
  static const _regular = FontWeight.w400;
  static const _light = FontWeight.w300;

  static final AppBarTheme _darkAppBarTheme = AppBarTheme(
    color: Colors.purple,
    elevation: 0,
    textTheme: _textTheme,
    centerTitle: true,
    actionsIconTheme: _darkActionIconTheme,
  );
  static final AppBarTheme _lightAppBarTheme = AppBarTheme(
      color: Colors.black.withOpacity(0.2),
      elevation: 0,
      textTheme: _textTheme,
      centerTitle: true,
      iconTheme: _lightActionIconTheme,
      actionsIconTheme: _lightActionIconTheme,
      brightness: Brightness.dark);

  static const IconThemeData _darkActionIconTheme = IconThemeData(
    color: Colors.indigo,
  );
  static const IconThemeData _lightActionIconTheme = IconThemeData(
    color: Colors.black,
  );

  static const FloatingActionButtonThemeData _darkFabThemeData =
      FloatingActionButtonThemeData(
    backgroundColor: Colors.purple,
  );
  static const FloatingActionButtonThemeData _lightFabThemeData =
      FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
  );

  static final TextTheme _textTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
      fontSize: 96.0,
      color: Colors.indigo,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline2: GoogleFonts.montserrat(
      fontSize: 60,
      color: Colors.indigo,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline3: GoogleFonts.montserrat(
      fontSize: 48.0,
      color: Colors.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline4: GoogleFonts.montserrat(
      fontSize: 34.0,
      color: Colors.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline5: GoogleFonts.montserrat(
      fontSize: 24.0,
      color: Colors.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline6: GoogleFonts.montserrat(
      fontSize: 18.0,
      color: Styles.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    subtitle1: GoogleFonts.montserrat(
      fontSize: 18.0,
      color: Colors.black,
      fontWeight: _semiBold,
      fontStyle: FontStyle.normal,
    ),
    subtitle2: GoogleFonts.montserrat(
      fontSize: 14.0,
      color: Colors.indigo,
      fontWeight: _semiBold,
      fontStyle: FontStyle.normal,
    ),
    bodyText1: GoogleFonts.montserrat(
      fontSize: 17,
      color: Colors.black,
      fontWeight: _medium,
      fontStyle: FontStyle.normal,
    ),
    bodyText2: GoogleFonts.montserrat(
      fontSize: 14.0,
      color: Colors.black,
      fontWeight: _medium,
      fontStyle: FontStyle.normal,
    ),
    button: GoogleFonts.montserrat(
      fontSize: 18.0,
      color: Styles.primaryText,
      fontStyle: FontStyle.normal,
      fontWeight: _medium,
    ),
    caption: GoogleFonts.montserrat(
      fontSize: 12.0,
      color: Colors.black,
      fontWeight: _regular,
      fontStyle: FontStyle.normal,
    ),
  );
}
