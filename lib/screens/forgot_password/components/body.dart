import 'package:Bean/screens/forgot_password/components/forgot_pass_form.dart';
import 'package:Bean/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(28),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Please enter your email. We will send you \na link to reset your password.",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.1),
                  ForgotPassForm(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

