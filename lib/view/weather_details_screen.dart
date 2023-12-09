import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_services.dart';

class WeatherDeatailsScreen extends StatelessWidget {
  const WeatherDeatailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('looosad'),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Text('city name'),
              SizedBox(
                height: 5,
              ),
              Text('date time'),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('image'),
                    // Image(image: AssetImage('')),

                    Text('temp'),

                    Column(
                      children: [
                        Text('max temp'),
                        Text('min temp'),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 80),
              Column(
                children: [
                  Text('temp condition'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
