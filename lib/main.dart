import 'package:flutter/material.dart';
import 'package:weather_app/view/home_screen.dart';
import 'package:weather_app/view/search_screen.dart';
import 'package:weather_app/view/weather_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  bool isTrue = true;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SearchScreen(),
      //  HomePage(title: 'Flutter Demo Home Page') ,
    );
  }
}
