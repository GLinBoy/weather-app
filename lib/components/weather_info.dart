import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  final String imagePath;
  final String degree;
  final String dayName;

  const WeatherInfo({
    Key? key,
    required this.imagePath,
    required this.degree,
    required this.dayName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 64,
          height: 64,
        ),
        Text(
          '$degree°',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 7.0),
        Text(dayName),
      ],
    );
  }
}
