import 'package:clean1/weather/data/data_sources/weather_service.dart';
import 'package:clean1/weather/domain/entities/weather.dart';
import 'package:clean1/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImp implements WeatherRepository{
  final BaseWeatherService _weatherService;

  WeatherRepositoryImp(this._weatherService);

  @override
  Future<Weather?> getCityWeather(String cityName) async {

    return await _weatherService.getCityWeather(cityName);
  }

}