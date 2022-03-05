import '../../util/json_util.dart';

import 'city.dart';
import 'weather_data.dart';

class DailyForecast16DaysResponse {
  String? cod;
  double? message;
  int? cnt;
  List<WeatherData>? list;
  City? city;

  DailyForecast16DaysResponse({
    this.cod,
    this.message,
    this.cnt,
    this.list,
    this.city,
  });

  factory DailyForecast16DaysResponse.fromJson(Map<String, dynamic> json) {
    final weatherData = <WeatherData>[];
    if (json['list'] != null) {
      json['list'].forEach((l) {
        weatherData.add(WeatherData.fromJson(l));
      });
    }
    return DailyForecast16DaysResponse(
      cod: json['cod'],
      message: json['message'],
      cnt: json['cnt'],
      list: weatherData,
      city: convertJson(json['city'], City.fromJson),
    );
  }
}
