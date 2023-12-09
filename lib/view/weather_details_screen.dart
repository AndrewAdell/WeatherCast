import 'package:flutter/material.dart';

class WeatherDeatailsScreen extends StatelessWidget {
  const WeatherDeatailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
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
            ],
          ),
        ),
      ),
    );
  }
}
