import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';

import '../models/models.dart';
import '../models/daily_forecast_16_days/models.dart';

class MockWeatherhService {
  Future<ServiceResponce> get5Day3HourForcastData() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final dataString = await _loadAsset(
      'assets/sample_data/5day_3hour_forecast_data.json',
    );
    final Map<String, dynamic> json = jsonDecode(dataString);
    return ServiceResponce.fromJson(json);
  }

  Future<DailyForecast16DaysResponse> getDailyForecast16DaysData() async {
    await Future.delayed(const Duration(milliseconds: 500));
    final dataString = await _loadAsset(
      'assets/sample_data/call_16_day_daily_forecast_data.json',
    );
    final Map<String, dynamic> json = jsonDecode(dataString);
    return DailyForecast16DaysResponse.fromJson(json);
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
