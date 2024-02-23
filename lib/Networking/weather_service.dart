import 'dart:convert';

import 'package:http/http.dart' as http;

import 'location_service.dart';

String apiKey = "2d78601ee301f4a45b41b3923b3abc7a";

Future<void> hitAPI() async {
  Location location = Location();
  await location.getCurrentLocation();
  double lati = location.latitude;
  double longi = location.longitude;

  http.Response response = await http.get(Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?lat=$lati&lon=$longi&appid=$apiKey&units=metric"));

  if (response.statusCode == 200) {
    print("Response status code is 200");
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    print(jsonData['main']['temp']);
    print(jsonData['weather'][0]['description']);
  } else {
    print("Status code is ${response.statusCode}");
  }
}