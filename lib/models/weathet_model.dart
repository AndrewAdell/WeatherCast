import 'dart:core';

import 'package:flutter/material.dart';

class WeatherModel {
  String? cityName;
  double? date;
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

//      factory WeatherModel.fromJsom(json){

// return  WeatherModel(cityName: json, date: date, image: image, maxTemp: maxTemp, minTemp: minTemp, temp: temp, weatherCondition: weatherCondition)
//      }
}
