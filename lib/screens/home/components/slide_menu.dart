import 'package:Bean/screens/home/components/profile_menu.dart';
import 'package:Bean/screens/home/components/profile_pic.dart';
import 'package:flutter/material.dart';

Container slideMenu() {
  return Container(
    width: 200.0,
    padding: EdgeInsets.only(left: 20, top: 100, right: 8, bottom: 8),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfilePic(),
          SizedBox(
            height: 10,
          ),
          Text(
            "David Song",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 50,
          ),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () {},
          ),
          SizedBox(
            height: 10,
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          SizedBox(
            height: 10,
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          SizedBox(
            height: 10,
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          SizedBox(
            height: 10,
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    ),
  );
}