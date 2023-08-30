import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui_desi/const/all_color.dart';
import 'package:ui_desi/const/all_style.dart';
import 'package:ui_desi/const/all_text.dart';
import 'package:ui_desi/signup_screen.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.whiteColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(AllText.headingText, style: AllStyles.headingStyle,  ),
      ),

      body: Column(
        children: [
          Center(
            child: Container(
              height: 100.0,
              child: Text('Please LogIn or Sign Up'),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 300.0,
            width: 300.0,
              child: Image.asset('images/parv.jpg')
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
            onPressed: () {
              // Navigate to the login screen when the "Login" button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text('Login'),
          ),
          SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {
              // Handle sign-up button press
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupScreen()),
              );
            },
            child: Text('Sign Up'),
          ),


        ],
      ),
    );
  }
}
