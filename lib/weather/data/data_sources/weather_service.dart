 import 'package:clean1/utils/constantine.dart';
import 'package:clean1/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherService implements BaseWeatherService {
  @override
  Future<WeatherModel?> getCityWeather(String cityName) async{
    try {
      var response = await Dio().get("${Constantine.baseUrl}/weather?q=$cityName&appid=${Constantine.apiKey}");
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
abstract class BaseWeatherService{

  Future<WeatherModel?> getCityWeather(String cityName);

}
