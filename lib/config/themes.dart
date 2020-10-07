import 'package:flutter/material.dart';

final Color _cesiPrimaryColor = Color(0xff1475D3);
final Color _exiaPrimaryColor = Color(0xfff44336);

ThemeData lightThemeCesi = ThemeData.light().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: _cesiPrimaryColor,
  accentColor: _cesiPrimaryColor,
  primaryColorLight: Color(0xff4290DB),
  primaryColorDark: Color(0xff105DA8),
  scaffoldBackgroundColor: Colors.white,
  canvasColor: Color(0xffe7edef),
  textSelectionTheme: TextSelectionThemeData(selectionColor: _cesiPrimaryColor.withOpacity(0.3)),
  useTextSelectionTheme: true,
  cardColor: Colors.white,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
    backgroundColor: _cesiPrimaryColor,
  ),
);

ThemeData darkThemeCesi = ThemeData.dark().copyWith(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: _cesiPrimaryColor,
  accentColor: _cesiPrimaryColor,
  primaryColorLight: Color(0xff4290DB),
  primaryColorDark: Color(0xff105DA8),
  canvasColor: Colors.black.withOpacity(0.95),
  scaffoldBackgroundColor: Colors.grey[900],
  textSelectionTheme: TextSelectionThemeData(selectionColor: _cesiPrimaryColor.withOpacity(0.3)),
  useTextSelectionTheme: true,
  cardColor: Colors.grey[900],
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: Colors.black,
    backgroundColor: _cesiPrimaryColor,
  ),
);

ThemeData lightThemeExia = lightThemeCesi.copyWith(
  primaryColor: _exiaPrimaryColor,
  accentColor: _exiaPrimaryColor,
  primaryColorLight: Color(0xffF6685E),
  primaryColorDark: Color(0xffC3352B),
  textSelectionTheme: TextSelectionThemeData(selectionColor: _exiaPrimaryColor.withOpacity(0.3)),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
    backgroundColor: _exiaPrimaryColor,
  ),
);

ThemeData darkThemeExia = darkThemeCesi.copyWith(
  primaryColor: _exiaPrimaryColor,
  accentColor: _exiaPrimaryColor,
  primaryColorLight: Color(0xffF6685E),
  primaryColorDark: Color(0xffC3352B),
  textSelectionTheme: TextSelectionThemeData(selectionColor: _exiaPrimaryColor.withOpacity(0.3)),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: Colors.black,
    backgroundColor: _exiaPrimaryColor,
  ),
);
