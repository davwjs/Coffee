import 'package:Bean/screens/cart/cart_screen.dart';
import 'package:Bean/screens/tab_bar_view/brewed_screen.dart';
import 'package:Bean/screens/tab_bar_view/espresso_screen.dart';
import 'package:Bean/screens/home/components/icon_btn_with_counter.dart';
import 'package:Bean/screens/home/components/slide_menu.dart';
import 'package:Bean/screens/tab_bar_view/pastries_screen.dart';
import 'package:Bean/screens/tab_bar_view/tea_screen.dart';
import 'package:Bean/size_config.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0a1014),
                Color(0xFFd27841),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        slideMenu(),
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: value),
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
          builder: (_, double val, __) {
            return (Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..setEntry(0, 3, 200 * val)
                ..rotateY((pi / 6) * val),
              child: DefaultTabController(
                length: 4,
                child: Scaffold(
                  appBar: AppBar(
                    toolbarHeight: getProportionateScreenWidth(150),
                    automaticallyImplyLeading: false,
                    backgroundColor: Color(0xFF0a1014),
                    title: homeHeader(),
                    bottom: TabBar(
                      labelPadding: EdgeInsets.symmetric(horizontal: 30),
                      isScrollable: true,
                      indicatorColor: Color(0xFFd27841),
                      indicatorWeight: 3.0,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        // color: Color(0xFFd27841),
                      ),
                      labelColor: Color(0xFFd27841),
                      unselectedLabelColor: Colors.grey,
                      unselectedLabelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                      onTap: (index) {
                        setState(() {});
                      },
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            "Espresso",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Brewed",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Tea",
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Pastries",
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: <Widget>[
                      EspressoScreen(),
                      BrewedScreen(),
                      TeaScreen(),
                      PastriesScreen(),
                    ],
                  ),
                ),
              ),
            ));
          },
        ),
      ],
    );
  }

  Column homeHeader() {
    return Column(
      children: [
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBtnWithCounter(
                  svgSrc: "assets/icons/menu.svg",
                  press: () {
                    setState(() {
                      value == 0 ? value = 1 : value = 0;
                    });
                  }),
              IconBtnWithCounter(
                svgSrc: "assets/icons/Cart Icon.svg",
                press: () => Navigator.pushNamed(context, CartScreen.routeName),
                numOfItems: 4,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          height: 120,
          child: Text(
            "FIND THE BEST\nCOFFEE FOR YOU",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
