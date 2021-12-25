import 'package:Bean/components/default_button.dart';
import 'package:Bean/screens/home/home_screen.dart';
import 'package:Bean/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Image.asset(
            "assets/images/bean.png",
            height: SizeConfig.screenHeight * 0.4, // 40%
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Home",
              press: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
