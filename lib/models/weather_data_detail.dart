class WeatherDataDetail {
  double? temp;
  double? feels_like;
  double? temp_min;
  double? temp_max;
  double? pressure;
  double? sea_level;
  double? grand_level;
  double? humiday;
  double? temp_kf;

  WeatherDataDetail({
    this.temp,
    this.feels_like,
    this.temp_min,
    this.temp_max,
    this.pressure,
    this.sea_level,
    this.grand_level,
    this.humiday,
    this.temp_kf,
  });

  factory WeatherDataDetail.fromJson(Map<String, dynamic> json) {
    return WeatherDataDetail(
      temp: json['temp'],
      feels_like: json['feels_like'],
      temp_min: json['temp_min'],
      temp_max: json['temp_max'],
      pressure: json['pressure'],
      sea_level: json['sea_level'],
      grand_level: json['grand_level'],
      humiday: json['humiday'],
      temp_kf: json['temp_kf'],
    );
  }
}
