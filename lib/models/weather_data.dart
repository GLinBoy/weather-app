import 'dart:developer';
import 'dart:convert';

import '../util/json_util.dart';

import 'weather_data_detail.dart';
import 'weather_data_info.dart';
import 'weather_data_clouds.dart';
import 'weather_data_wind.dart';
import 'weather_data_system.dart';

class WeatherData {
  int? dt;
  WeatherDataDetail? main;
  List<WeatherDataInfo>? weather;
  WeatherDataClouds? clouds;
  WeatherDataWind? wind;
  int? visibility;
  double? pop;
  WeatherDataSystem? sys;
  String? dt_txt;

  WeatherData({
    this.dt,
    this.main,
    this.weather,
    this.clouds,
    this.wind,
    this.visibility,
    this.pop,
    this.sys,
    this.dt_txt,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    final weatherDataInfo = <WeatherDataInfo>[];
    if (json['weather'] != null) {
      json['weather'].forEach((w) {
        weatherDataInfo.add(WeatherDataInfo.fromJson(w));
      });
    }
    return WeatherData(
      dt: json['dt'],
      main: convertJson(json['main'], WeatherDataDetail.fromJson),
      weather: weatherDataInfo,
      clouds: convertJson(json['clouds'], WeatherDataClouds.fromJson),
      wind: convertJson(json['wind'], WeatherDataWind.fromJson),
      visibility: json['visibility'],
      pop: json['pop'],
      sys: convertJson(json['sys'], WeatherDataSystem.fromJson),
      dt_txt: json['dt_txt'],
    );
  }
}
