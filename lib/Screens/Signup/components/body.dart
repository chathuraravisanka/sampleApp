import 'package:flutter/material.dart';
import 'package:sample_app/Screens/Login/login_screen.dart';
import 'package:sample_app/Screens/Signup/components/background.dart';
import 'package:sample_app/Screens/Signup/components/social_icon.dart';
import 'package:sample_app/components/already_have_an_account_acheck.dart';
import 'package:sample_app/components/rounded_button.dart';
import 'package:sample_app/components/rounded_input_field.dart';
import 'package:sample_app/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
             SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "First name",
              onChanged: (value) {},
            ),
             SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Last name",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
         
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
