import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather/api/mock_weather_service.dart';
import 'models/daily_forecast_16_days/models.dart';

import 'components/weather_infos_row.dart';
import 'components/current_weather_info.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final weatherService = MockWeatherhService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: weatherService.getDailyForecast16DaysData(),
      builder: (context, AsyncSnapshot<DailyForecast16DaysResponse> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            var response = snapshot.data;
            return Scaffold(
              appBar: AppBar(
                title: Text(widget.title),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        CurrentWeatherInfo(
                          currentWeatherData: response!.list![0],
                        ),
                        const SizedBox(height: 7.0),
                        WeatherInfosRow(
                          weatherData: response.list!.sublist(1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('ERROR: ${snapshot.error}'),
            );
          } else {
            return const Center(
              child: Text('Somthing went wrong...'),
            );
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
