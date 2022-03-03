import 'dart:developer';

import '../util/json_util.dart';

import 'city.dart';
import 'weather_data.dart';

class ServiceResponce {
  String? cod;
  int? message;
  int? cnt;
  List<WeatherData>? list;
  City? city;

  ServiceResponce({
    this.cod,
    this.message,
    this.cnt,
    this.list,
    this.city,
  });

  factory ServiceResponce.fromJson(Map<String, dynamic> json) {
    final weatherData = <WeatherData>[];
    if (json['list'] != null) {
      json['list'].forEach((l) {
        weatherData.add(WeatherData.fromJson(l));
      });
    }
    return ServiceResponce(
      cod: json['cod'],
      message: json['message'],
      cnt: json['cnt'],
      list: weatherData,
      city: convertJson(json['city'], City.fromJson),
    );
  }
}
