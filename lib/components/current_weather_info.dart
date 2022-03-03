import 'package:flutter/material.dart';

import '../models/models.dart';

class CurrentWeatherInfo extends StatelessWidget {
  final WeatherData currentWeatherData;
  const CurrentWeatherInfo({
    Key? key,
    required this.currentWeatherData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text(
              'Tehran',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              currentWeatherData.weather?[0].description ?? 'UNKOWN',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 13.0),
            Image.asset(
              'assets/images/sun.png',
              width: 256.0,
              height: 256.0,
            ),
            const SizedBox(
              height: 13.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.water_drop),
                    const SizedBox(height: 10.0),
                    Text(
                      '${currentWeatherData.main?.humidity ?? 0}%',
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${currentWeatherData.main?.temp?.toInt() ?? 0}°',
                      style: const TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.waves),
                    const SizedBox(height: 10.0),
                    Text(
                      '${currentWeatherData.wind?.speed ?? 0} km/h',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Chip(
                      label: SizedBox(
                        width: 65,
                        height: 20,
                        child: Center(
                          child: Text('Low'),
                        ),
                      ),
                      backgroundColor: Colors.yellow,
                    ),
                    SizedBox(height: 5.0),
                    Text('UV'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Chip(
                      label: SizedBox(
                        width: 65,
                        height: 20,
                        child: Center(
                          child: Text('Low'),
                        ),
                      ),
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(height: 5.0),
                    Text('Pollution'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Chip(
                      label: SizedBox(
                        width: 65,
                        height: 20,
                        child: Center(
                          child: Text('Moderate'),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text('Pollen'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
