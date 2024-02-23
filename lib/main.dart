// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sky_cast/Screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
