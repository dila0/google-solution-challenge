import 'package:flutter/material.dart';
import 'package:google_solution/utilities/constants.dart';
import 'package:google_solution/utilities/circles.dart';
import 'package:google_solution/utilities/register_text_field.dart';
import 'package:google_solution/utilities/register_button.dart';
import 'package:google_solution/screens/contact_options_screen.dart';
import 'package:google_solution/utilities/bottom_text_sign_in.dart';
import 'package:google_solution/screens/sign_up_screen.dart';

String startText = 'WELCOME BACK!';
String logInText = 'Log In';

class SignInScreen extends StatefulWidget {
  static const String id = 'Sign In Screen';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String email = "";
  String password = "";

  void setEmail(String inputEmail) {
    email = inputEmail;
  }

  void setPassword(String inputPassword) {
    password = inputPassword;
  }

  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: <Widget>[
          const Circles(),
          //text fields
          Center(
            child: Column(
              children: [
                const SizedBox(height: kSignUpScreenDistanceFromTop),

                //started text
                Text(startText, style: kSignUpInScreen),
                const SizedBox(height: 25.0),

                //image
                Image.asset(
                  'images/audio.png',
                  height: 300.0,
                ),

                const SizedBox(height: 15.0),
                //email
                RegisterTextField(
                  hintText: 'Enter Your Email',
                  onChanged: setEmail,
                ),
                const SizedBox(height: kSignUpScreenDistanceBetweenTextFields),

                //password
                RegisterTextField(
                  hintText: 'Enter Your Password',
                  onChanged: setPassword,
                  obscured: true,
                ),
                const SizedBox(height: 20.0),

                //register button
                RegisterButton(
                  title: logInText,
                  routeName: ContactOptionsScreen.id,
                  minWidth: 200.0,
                  height: 40.0,
                  pressedFunct: signIn,
                ),
                const SizedBox(height: 20.0),

                //bottom text
                const Center(
                  child: BottomText(
                    bottomText: 'Don\'t have an account?  ',
                    bottomHyperLink: 'Sign Up',
                    routeName: SignUpScreen.id,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
