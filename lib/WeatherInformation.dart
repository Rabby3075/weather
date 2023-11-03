import 'package:flutter/material.dart';
import 'package:m11/WeatherData.dart';

class WeatherDisplay extends StatelessWidget {
  final WeatherData weather;

  WeatherDisplay({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('City: ${weather.city}'),
            Text('Temperature: ${weather.temperature}°C'),
            Text('Condition: ${weather.condition}'),
            Text('Humidity: ${weather.humidity}%'),
            Text('Wind Speed: ${weather.windSpeed} km/h'),
          ],
        ),
      ),
    );
  }
}
