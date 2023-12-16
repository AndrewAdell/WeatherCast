import 'dart:core';

import 'package:flutter/material.dart';

class WeatherModel {
  String? cityName;
  DateTime? date;
  String? image;
  String? weatherCondition;
  double? minTemp;
  double? maxTemp;
  double? temp;

  WeatherModel(
      {@required this.cityName,
      @required this.date,
      @required this.image,
      @required this.maxTemp,
      @required this.minTemp,
      @required this.temp,
      @required this.weatherCondition});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json["location"]["name"],
      date: DateTime.parse(json["current"]["last_updated"]),
      image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      temp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      weatherCondition: json['forecast']["forecastday"][0]["day"]["condition"]
          ["text"],
    );
  }
}
