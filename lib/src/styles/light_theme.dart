import 'package:flutter/material.dart';

class LightTheme {
  static const primaryColorLigth = Color.fromRGBO(255, 70, 84, 1);

  static ThemeData get theme {
    return ThemeData(
      expansionTileTheme: const ExpansionTileThemeData(
          textColor: primaryColorLigth, collapsedTextColor: primaryColorLigth),
      appBarTheme: const AppBarTheme(backgroundColor: primaryColorLigth),
      listTileTheme: const ListTileThemeData(textColor: primaryColorLigth),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
                  WidgetStateProperty.all<Color>(primaryColorLigth))),
      textTheme: const TextTheme(
        displaySmall: TextStyle(color: Colors.white),
        titleSmall: TextStyle(
          color: primaryColorLigth,
        ),
        titleLarge: TextStyle(
          color: primaryColorLigth,
        ),
        titleMedium: TextStyle(
            color: primaryColorLigth,
            fontWeight: FontWeight.normal,
            fontSize: 16),
        bodySmall: TextStyle(
          color: primaryColorLigth,
        ),
        bodyMedium: TextStyle(
          color: primaryColorLigth,
          fontSize: 16,
        ),
        labelMedium: TextStyle(
          color: primaryColorLigth,
        ),
        labelLarge: TextStyle(
          color: primaryColorLigth,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColorLigth,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
      useMaterial3: true,
    );
  }
}
