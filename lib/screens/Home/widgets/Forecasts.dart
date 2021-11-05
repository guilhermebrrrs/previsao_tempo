import 'package:flutter/material.dart';
import 'package:previsao_tempo/entities/WeatherForecastItem.dart';
import 'package:previsao_tempo/screens/Home/widgets/WeatherForecastCard.dart';
import 'package:previsao_tempo/services/WeatherService.dart';

class Forecasts extends StatelessWidget {
  final List<WeatherForecastItem> latestForecasts =
      WeatherForecastService().getLatestForecasts();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        child: ListView.builder(
          itemBuilder: (context, index) {
            var item = latestForecasts[index];

            return WeatherForecastCard(
              textValue: "${item.time} " +
                  "Avg: ${item.averageTemperatureForecast} " +
                  "Max: ${item.maxTemperatureForecast} " +
                  "Min: ${item.minTemperatureForecast} " +
                  "Condição: ${item.description}",
            );
          },
          itemCount: latestForecasts.length,
        ),
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
