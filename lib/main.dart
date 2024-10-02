import 'package:flutter/material.dart';
import 'package:ngdemo8/pages/home_page.dart';
import 'package:ngdemo8/themes/app_theme.dart';

void main() {
  runApp(const RunMyApp());
}

class RunMyApp extends StatefulWidget{
  const RunMyApp({super.key});

  @override
  State<RunMyApp> createState() => _RunMyAppState();
}

class _RunMyAppState extends State<RunMyApp>{

  ThemeMode themeMode = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.light(useMaterial3: true), // Light Mode
      //darkTheme: ThemeData.dark(useMaterial3: true), // Dark Mode
      theme: AppTheme.themeData(false), // Light Mode
      darkTheme: AppTheme.themeData(true), // Dark Mode
      title: "Theme Mode (Dark Mode, Light Mode)",
      home: HomePage(),
      themeMode: themeMode,
    );
  }
}


