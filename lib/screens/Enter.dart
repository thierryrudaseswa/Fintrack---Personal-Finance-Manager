import 'package:flutter/material.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({super.key});

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/brand.png',
              width: 200,
              height: 160,
            ),
            Text(
              "BANK PICK",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
