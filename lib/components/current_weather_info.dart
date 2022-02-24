import 'package:flutter/material.dart';

class CurrentWeatherInfo extends StatelessWidget {
  const CurrentWeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Tehran',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Sunny',
          style: TextStyle(
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
              children: const [
                Icon(Icons.water_drop),
                SizedBox(height: 5.0),
                Text('39-40%'),
              ],
            ),
            Column(
              children: const [
                Text(
                  '27°',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.waves),
                SizedBox(height: 5.0),
                Text('24km/h'),
              ],
            ),
          ],
        ),
        const SizedBox(height: 24.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: const [
                Chip(
                  label: Text('Low'),
                  backgroundColor: Colors.yellow,
                ),
                SizedBox(height: 5.0),
                Text('UV'),
              ],
            ),
            Column(
              children: const [
                Chip(
                  label: Text('Low'),
                  backgroundColor: Colors.blue,
                ),
                SizedBox(height: 5.0),
                Text('Pollution'),
              ],
            ),
            Column(
              children: const [
                Chip(
                  label: Text('Moderate'),
                ),
                SizedBox(height: 5.0),
                Text('Pollen'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
