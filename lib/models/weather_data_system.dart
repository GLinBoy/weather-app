class WeatherDataSystem {
  String? pop;

  WeatherDataSystem({
    this.pop,
  });

  factory WeatherDataSystem.fromJson(Map<String, dynamic> json) {
    return WeatherDataSystem(pop: json['pop']);
  }
}
