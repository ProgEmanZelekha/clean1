import 'package:clean1/weather/domain/entities/weather.dart';
import 'package:clean1/weather/domain/repositories/weather_repository.dart';

class GetCityWeather {
  final WeatherRepository _weatherRepository;

  GetCityWeather(this._weatherRepository);

  Future<Weather?> execute(String cityName) async {
    return await _weatherRepository.getCityWeather(cityName);
  }
}
