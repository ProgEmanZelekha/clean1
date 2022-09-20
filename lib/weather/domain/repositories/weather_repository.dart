import 'package:clean1/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Weather?> getCityWeather(String cityName);
}
