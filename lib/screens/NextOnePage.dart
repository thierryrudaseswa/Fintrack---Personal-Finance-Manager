import 'package:flutter/material.dart';
import 'package:themeflutter/components/Button.dart';
import 'package:themeflutter/screens/NextTwoPage.dart';

class NextOnePage extends StatefulWidget {
  final void Function(ThemeMode) toggleTheme;

  const NextOnePage({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  State<NextOnePage> createState() => _NextOnePageState();
}

class _NextOnePageState extends State<NextOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Home Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              ThemeMode newThemeMode =
                  Theme.of(context).brightness == Brightness.dark
                      ? ThemeMode.light
                      : ThemeMode.dark;
              widget.toggleTheme(newThemeMode);
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 10),
              child: Image.asset(
                'assets/nextone.png',
                width: MediaQuery.of(context).size.width * 1.4,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            const SizedBox(height: 40),
            Column(
              children: const [
                Text(
                  'Fastest payment in',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Center(
                  child: Text(
                    'the world',
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Column(
              children: const [
                Text(
                  'Integrate multiple payment methods',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8.0),
                Center(
                  child: Text(
                    'to help you up the process quickly',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            ButtonCo(
              label: 'Next',
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextTwoPage(
                        toggleTheme: widget
                            .toggleTheme), // Pass the toggleTheme function here
                  ),
                  (route) => false,
                );
              },
              width: 200,
              backgroundColor: const Color(0xFF0066FF),
            ),
          ],
        ),
      ),
    );
  }
}
