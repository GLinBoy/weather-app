import 'package:flutter/material.dart';
import 'weather_info.dart';

class WeatherInfosRow extends StatelessWidget {
  const WeatherInfosRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        WeatherInfo(
          imagePath: 'assets/images/cloud.png',
          degree: '22',
          dayName: 'Sunday',
        ),
        WeatherInfo(
          imagePath: 'assets/images/cloudy-day.png',
          degree: '20',
          dayName: 'Monday',
        ),
        WeatherInfo(
          imagePath: 'assets/images/cloudy-night.png',
          degree: '22',
          dayName: 'Tuesday',
        ),
        WeatherInfo(
          imagePath: 'assets/images/cloudy.png',
          degree: '20',
          dayName: 'Wendsday',
        ),
        WeatherInfo(
          imagePath: 'assets/images/rain.png',
          degree: '18',
          dayName: 'Tuersday',
        ),
        WeatherInfo(
          imagePath: 'assets/images/snowy.png',
          degree: '16',
          dayName: 'Friday',
        ),
        WeatherInfo(
          imagePath: 'images/storm.png',
          degree: '14',
          dayName: 'Satarday',
        ),
      ],
    );
  }
}
