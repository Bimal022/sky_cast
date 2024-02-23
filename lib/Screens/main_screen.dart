// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              margin: EdgeInsets.fromLTRB(0, 98, 0, 12),
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
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "H:24°",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "L:18°",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
