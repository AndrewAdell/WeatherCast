import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weathet_model.dart';

class WeatherServices {
  Dio dio;
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'ab95869619f44bbfa24191737230912';
  WeatherServices(this.dio);
  Future<WeatherModel> getWeather({required String? cityName}) async {
    try {
      Response response =
          await dio.get('$baseUrl/forecast.json?key=$apiKey&q=London&days=1');

      print('responseeeeeeeeee :$response');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      print('weather modelllllllll:$weatherModel');
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'opps there was an error ';

      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an  error ,try later');
    }
  }
}
