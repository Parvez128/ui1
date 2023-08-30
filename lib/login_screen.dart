import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui_desi/const/all_color.dart';
import 'package:ui_desi/const/all_style.dart';
import 'package:ui_desi/const/all_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.loginColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(AllText.loginText, style: AllStyles.lohinStyle,  ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Container(
                  height: 100.0,
                  child: Text('Login to your account'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  LoginForm(),
                  SizedBox(height: 100.0),
                  FlutterLogo(size: 100), // Replace with your logo or image widget

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}
class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Perform login here
              }
            },
            child: Text('Login'),

          ),
          SizedBox(height: 20.0,),
          Center(
            child: Row(
              children: [
                Container( child: Text('Dont have an account?'),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Perform login here
                      }
                    },
                    child: Text('Sign Up'),

                  ),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}




