import 'package:flutter/material.dart';
import 'package:themeflutter/screens/EditProfile.dart';
import 'package:themeflutter/screens/LandPage.dart';
import 'package:themeflutter/screens/Profile.dart';
import 'package:themeflutter/screens/Setting.dart';
import 'package:themeflutter/screens/NextOnePage.dart';
import 'package:themeflutter/screens/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: SignInPage(),
      routes: {
        '/home': (context) => BankingSystem(toggleTheme: _toggleTheme),
      },
    );
  }
}

class BankingSystem extends StatefulWidget {
  final int initialPage;
  final void Function(ThemeMode) toggleTheme;

  BankingSystem({this.initialPage = 0, required this.toggleTheme});

  @override
  _BankingSystemState createState() => _BankingSystemState();
}

class _BankingSystemState extends State<BankingSystem> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialPage;
  }

  final List<Widget> _pages = [
    LandPage(),
    EditProfile(),
    Profile(),
    Setting(), // Added an extra page for demonstration purposes
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banking System'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              // Toggle between light and dark themes
              ThemeMode newThemeMode =
                  Theme.of(context).brightness == Brightness.dark
                      ? ThemeMode.light
                      : ThemeMode.dark;
              widget.toggleTheme(newThemeMode);
            },
          ),
        ],
      ),
      body: _currentIndex == -1 ? NextOnePage() : _pages[_currentIndex],
      bottomNavigationBar: _currentIndex != -1
          ? FloatingNavbar(
              selectedBackgroundColor: Colors.blue,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              onTap: (index) => setState(() => _currentIndex = index),
              currentIndex: _currentIndex,
              items: [
                FloatingNavbarItem(icon: Icons.home, title: 'Home'),
                FloatingNavbarItem(icon: Icons.edit, title: 'Edit'),
                FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
                FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
              ],
            )
          : null,
    );
  }
}

class FloatingNavbar extends StatelessWidget {
  final Color selectedBackgroundColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Function(int) onTap;
  final int currentIndex;
  final List<FloatingNavbarItem> items;

  FloatingNavbar({
    required this.selectedBackgroundColor,
    required this.selectedItemColor,
    required this.unselectedItemColor,
    required this.onTap,
    required this.currentIndex,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: selectedBackgroundColor,
      selectedItemColor: selectedItemColor,
      unselectedItemColor: unselectedItemColor,
      onTap: onTap,
      currentIndex: currentIndex,
      items: items
          .map(
            (item) => BottomNavigationBarItem(
              icon: Icon(item.icon),
              label: item.title,
            ),
          )
          .toList(),
    );
  }
}

class FloatingNavbarItem {
  final IconData icon;
  final String title;

  FloatingNavbarItem({required this.icon, required this.title});
}
