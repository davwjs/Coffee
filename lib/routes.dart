import 'package:Bean/screens/cart/cart_screen.dart';
import 'package:Bean/screens/detail/detail_screen.dart';
import 'package:Bean/screens/home/home_screen.dart';
import 'package:Bean/screens/complete_profile/complete_profile_screen.dart';
import 'package:Bean/screens/forgot_password/forgot_password_screen.dart';
import 'package:Bean/screens/login_success/login_success_screen.dart';
import 'package:Bean/screens/otp/otp_screen.dart';
import 'package:Bean/screens/sign_in/sing_in_screen.dart';
import 'package:Bean/screens/sign_up/sign_up_screen.dart';
import 'package:Bean/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};