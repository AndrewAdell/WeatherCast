import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weathet_model.dart';
import 'package:weather_app/services/weather_services.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('search city'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
            child: TextField(
          onSubmitted: (userInput) async {
            weatherModel =
                await WeatherServices(Dio()).getWeather(cityName: userInput);
          },
          decoration: InputDecoration(
              label: const Text('search'),
              hintText: 'enter the countary',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.orange)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.orange))),
        )),
      ),
    );
  }
}

WeatherModel? weatherModel;
