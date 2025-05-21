import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:valorant_store_viewer/src/styles/dark_theme.dart';
import 'package:valorant_store_viewer/src/styles/light_theme.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  ThemeMode themeMode = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'valorant store',
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      themeMode: themeMode,
      routerConfig: Modular.routerConfig,
    );
  }
}
