import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui_desi/const/all_color.dart';
import 'package:ui_desi/const/all_style.dart';
import 'package:ui_desi/const/all_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.loginColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(AllText.loginText, style: AllStyles.lohinStyle,),
      ),
      body:

      Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                child: Container(
                  height: 100.0,
                  child: Text('Creat an account, its free'),
                ),

              ),
            ),

            TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Confirm Password'),
              obscureText: true,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Implement signup logic here
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 20.0,),

            Center(
              child: Row(
                children: [
                  Container( child: Text('Already  have an account?'),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement signup logic here
                      },
                      child: Text('Login'),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
