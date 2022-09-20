class Weather {
  final int id;
  final String cityName;
  final String description;
  final String main;
  final int pressure;

  Weather(
      {required this.id,
      required this.cityName,
      required this.description,
      required this.main,
      required this.pressure});
}
