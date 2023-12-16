import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class WeatherDeatailsScreen extends StatelessWidget {
  const WeatherDeatailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Scaffold(
      // backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('weather info'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0x2c9df1), Color(0x92cbf9)],
          stops: [
            0.6,
            0.9,
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              children: [
                Text('${weatherModel.cityName}'),
                const SizedBox(
                  height: 5,
                ),
                Text(
                    'updated at:${weatherModel.date?.hour}:${weatherModel.date?.minute}0'),
                const SizedBox(
                  height: 80,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network('https:${weatherModel.image}'),
                      Text('${weatherModel.temp}'),
                      Column(
                        children: [
                          Text('max temp:${weatherModel.maxTemp?.round()}'),
                          Text('min tamp:${weatherModel.minTemp?.round()}'),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                Column(
                  children: [
                    Text('${weatherModel.weatherCondition}'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
