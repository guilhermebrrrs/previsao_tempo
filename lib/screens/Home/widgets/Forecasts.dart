import 'package:flutter/material.dart';
import 'package:previsao_tempo/entities/Forecast.dart';
import 'package:previsao_tempo/screens/Home/widgets/WeatherForecastCard.dart';

class Forecasts extends StatelessWidget {
  final List<Forecast> forecasts;

  Forecasts({
    required this.forecasts,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        child: ListView.builder(
          itemBuilder: (context, index) => WeatherForecastCard(
            forecast: forecasts[index],
          ),
          itemCount: forecasts.length,
        ),
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
