import 'package:flutter/material.dart';
import 'package:themeflutter/screens/NextOnePage.dart';
import 'package:themeflutter/screens/NextTwoPage.dart';
import 'package:themeflutter/screens/NextthreePage.dart';

class MyHomePage extends StatefulWidget {
  final void Function(ThemeMode) toggleTheme;

  const MyHomePage({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Set initial index to 0 for NextOnePage

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the selected route
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/NextTwoPage');
        break;
      case 2:
        Navigator.pushNamed(context, '/nextThree');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Page'),
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
      body: _selectedIndex == 0
          ? NextOnePage({})
          : _selectedIndex == 1
              ? NextTwoPage()
              : NextThreePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(
              toggleTheme: (mode) {}, // Define your toggleTheme function here
            ),
        '/nextTwo': (context) => NextTwoPage(),
        '/nextThree': (context) => NextThreePage(),
      },
    ),
  );
}
