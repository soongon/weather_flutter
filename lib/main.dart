import 'package:flutter/material.dart';
import 'package:weather_flutter/presentaion/city_screen.dart';
import 'package:weather_flutter/presentaion/loading_screen.dart';
import 'package:weather_flutter/presentaion/location_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: LoadingScreen(),
    routes: {
      '/locationscreen': (context) => LocationScreen(),
      '/cityscreen': (context) => CityScreen(),
    },
  ));
}
