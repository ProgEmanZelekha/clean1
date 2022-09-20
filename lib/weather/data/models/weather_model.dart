import 'package:clean1/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
      {required super.id,
      required super.cityName,
      required super.description,
      required super.main,
      required super.pressure});

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
      id: json["id"],
      cityName: json["name"],
      description: json["weather"][0]["description"],
      main: json["weather"][0]["main"],
      pressure: json["main"]["pressure"]);


}
