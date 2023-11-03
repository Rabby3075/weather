import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather Info App'),
        ),
        body: WeatherList(),
      ),
    );
  }
}

class WeatherList extends StatelessWidget {
  final List<Map<String, dynamic>> weatherData = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5,
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8,
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2,
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0,
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: weatherData.length,
      itemBuilder: (context, index) {
        final cityWeather = weatherData[index];
        return WeatherCard(
          city: cityWeather['city'],
          temperature: cityWeather['temperature'],
          condition: cityWeather['condition'],
          humidity: cityWeather['humidity'],
          windSpeed: cityWeather['windSpeed'],
        );
      },
    );
  }
}

class WeatherCard extends StatelessWidget {
  final String city;
  final int temperature;
  final String condition;
  final int humidity;
  final double windSpeed;

  WeatherCard({
    required this.city,
    required this.temperature,
    required this.condition,
    required this.humidity,
    required this.windSpeed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('City: $city',style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Temperature: $temperature°C'),
            Text('Condition: $condition'),
            Text('Humidity: $humidity%'),
            Text('Wind Speed: $windSpeed km/h'),
          ],
        ),
      ),
    );
  }
}
