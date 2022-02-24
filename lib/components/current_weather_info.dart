import 'package:flutter/material.dart';

class CurrentWeatherInfo extends StatelessWidget {
  const CurrentWeatherInfo({Key? key}) : super(key: key);

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
                    SizedBox(height: 10.0),
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
                    SizedBox(height: 10.0),
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
