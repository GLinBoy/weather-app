class WeatherDataWind {
  double? speed;
  double? deg;
  double? gust;

  WeatherDataWind({
    this.speed,
    this.deg,
    this.gust,
  });

  factory WeatherDataWind.fromJson(Map<String, dynamic> json) {
    return WeatherDataWind(
      speed: json['speed'],
      deg: json['deg'],
      gust: json['gust'],
    );
  }
}
