class WeatherDataClouds {
  int? all;

  WeatherDataClouds({
    this.all,
  });

  factory WeatherDataClouds.fromJson(Map<String, dynamic> json) {
    return WeatherDataClouds(all: json['all']);
  }
}
