import 'package:Bean/routes.dart';
import 'package:Bean/screens/splash/splash_screen.dart';
import 'package:Bean/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: new HomeScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

