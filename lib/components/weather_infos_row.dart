import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

import '../models/models.dart';
import 'weather_info.dart';

class WeatherInfosRow extends StatelessWidget {
  final List<WeatherData> weatherData;
  const WeatherInfosRow({
    Key? key,
    required this.weatherData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var infos = weatherData
        .map((wd) => WeatherInfo(
              imagePath: 'assets/images/cloud.png',
              degree: wd.main?.temp ?? 0.0,
              dayName: DateFormat('EEEE')
                  .format(DateTime.fromMillisecondsSinceEpoch(wd.dt ?? 0)),
            ))
        .toList();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: infos,
      ),
    );
  }
}
