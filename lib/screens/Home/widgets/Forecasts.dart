import 'package:flutter/material.dart';
import 'package:previsao_tempo/entities/WeatherForecastItem.dart';

class Forecasts extends StatelessWidget {
  final List<WeatherForecastItem> latestForecasts;

  Forecasts({
    required this.latestForecasts,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: Text("Olá mundo"),
        ),
      ],
    );
  }
}
