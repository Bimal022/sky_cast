// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sky_cast/widgets/custom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _bottomNavIndex = 0; 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: CustomNavigationBar(
        iconList: [Icons.home, Icons.search, Icons.favorite, Icons.settings], // Customize your icon list
        activeIndex: _bottomNavIndex,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index; // Update the active index when tapped
          });
        },
      ),
          body: Container(
        decoration: const BoxDecoration(
          color: Colors.purple,
          image: DecorationImage(
            image: ExactAssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 130, 0, 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Montreal",
                    style: TextStyle(
                      // fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 34,
                    ),
                  ),
                  Text(
                    "19°",
                    style: TextStyle(
                      // fontFamily: 'SF Pro Text',
                      fontWeight:
                          FontWeight.w100, // Specify the thin font weight
                      color: Colors.white,
                      fontSize: 96,
                      letterSpacing: 0.37,
                    ),
                  ),
                  Text(
                    "Mostly Clear",
                    style: TextStyle(
                        color: Color(0xFFEBEBF5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "H:24°",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "L:18°",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    height: 390,
                    width: 390,
                    child: Image.asset(
                      'assets/images/House.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
