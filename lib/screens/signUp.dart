import 'package:flutter/material.dart';
import 'package:themeflutter/components/Button.dart';
import 'package:themeflutter/components/TextField.dart';
import 'package:themeflutter/screens/signIn.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fullname = TextEditingController();
  final _phoneNumber = TextEditingController();

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
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              SizedBox(
                height: 40,
              ),
              CustomInput(
                label: 'Full Name',
                controller: _fullname,
                icon: Icon(
                  Icons.person,
                  size: 24,
                  color: Colors.grey,
                ),
                height: 60,
              ),
              SizedBox(
                height: 30,
              ),
              CustomInput(
                label: "Phone Number",
                controller: _phoneNumber,
                obscureText: true,
                icon: const Icon(
                  Icons.phone,
                ),
                height: 60,
              ),
              SizedBox(
                height: 30,
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
                height: 50,
              ),
              ButtonCo(
                label: 'Next',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
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
                      "Already Have an Account",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign In",
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
