import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weathet_model.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  // ignore: non_constant_identifier_names
  GetWeatherCubit() : super(WeatherInitialState());

  getWeather({required String? cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherServices().getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
