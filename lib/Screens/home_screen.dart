// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:sky_cast/Networking/weather_service.dart';
import '../Networking/location_service.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Location location = Location();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Sky Cast")),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
            onPressed: () {
              hitAPI();
            },
            child: Text("Current Locaiton")),
      )),
    ));
  }
}
