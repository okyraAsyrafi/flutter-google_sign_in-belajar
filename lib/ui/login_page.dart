import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            FlutterLogo(
              size: 150,
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hey There,\nWelcome Back',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Login to your account to continue',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            Spacer(),
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
                label: Text(
                  'Sign Up With Google',
                  style: TextStyle(color: Colors.black),
                ),
                icon: FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                )),
            SizedBox(height: 40),
            RichText(
              text: TextSpan(
                text: "Already have an account?",
                children: [
                  TextSpan(
                      text: " Log In",
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline))
                ],
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
