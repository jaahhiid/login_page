import 'package:flutter/material.dart';
import 'package:login_page/src/utils/theme/elevated_button_theme.dart';
import 'package:login_page/src/utils/theme/outlined_button_theme.dart';
import 'package:login_page/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:login_page/src/utils/theme/widget_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: ToutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldtheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: ToutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldtheme.darkInputDecorationTheme,
  );
}
