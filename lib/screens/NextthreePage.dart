import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:themeflutter/components/Button.dart';
import 'package:themeflutter/screens/signUp.dart';

class NextThreePage extends StatefulWidget {
  const NextThreePage({super.key});

  @override
  State<NextThreePage> createState() => _NextThreePageState();
}

class _NextThreePageState extends State<NextThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 10),
              child: Image.asset(
                'assets/nextthird.png',
                width: MediaQuery.of(context).size.width * 1.2,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Text(
                  'Paying for Everything is',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Center(
                  child: Text(
                    'Easy and Convenient',
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Text(
                  'Built-in Fingerprint, face recognition',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8.0),
                Center(
                  child: Text(
                    'and more, keeping you completely safe',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ButtonCo(
              label: 'Next',
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                    (route) => false);
              },
              width: 200,
              backgroundColor: Color(0xFF0066FF),
            ),
          ],
        ),
      ),
    );
  }
}
