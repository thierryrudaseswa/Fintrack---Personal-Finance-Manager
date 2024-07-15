import 'package:flutter/material.dart';
import 'package:themeflutter/NavScreen.dart';
import 'package:themeflutter/components/Button.dart';
import 'package:themeflutter/components/TextField.dart';
import 'package:themeflutter/screens/LandPage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Sign In",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              SizedBox(
                height: 40,
              ),
              CustomInput(
                label: 'email',
                controller: _emailController,
                icon: Icon(
                  Icons.email_outlined,
                  size: 24,
                  color: Colors.grey,
                ),
                height: 60,
              ),
              SizedBox(
                height: 30,
              ),
              CustomInput(
                label: "password",
                controller: _passwordController,
                obscureText: true,
                icon: const Icon(
                  Icons.lock_sharp,
                ),
                height: 60,
              ),
              SizedBox(
                height: 80,
              ),
              ButtonCo(
                label: 'Next',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              BankingSystem(toggleTheme: (ThemeMode themeMode) {
                                // Your logic to toggle theme goes here
                                // For example:
                                // MyApp.of(context).toggleTheme(themeMode);
                              })),
                      (route) => false);
                },
                width: 200,
                backgroundColor: Color(0xFF0066FF),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I'm a new user.",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(0xFF0066FF),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
