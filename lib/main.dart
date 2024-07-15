import 'package:flutter/material.dart';
import 'package:themeflutter/MyHomePage.dart';
import 'package:themeflutter/theme/MyAppThemes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppThemes.lightTheme,
      darkTheme: MyAppThemes.darkTheme,
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        toggleTheme: _toggleTheme,
      ),
    );
  }
}
