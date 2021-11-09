import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:previsao_tempo/entities/Forecast.dart';
import 'package:previsao_tempo/helpers/utils.dart';
import 'package:previsao_tempo/screens/Home/widgets/WeatherForecastText.dart';

class WeatherForecastCard extends StatelessWidget {
  final Forecast forecast;

  WeatherForecastCard({
    required this.forecast,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                WeatherForecastText(text: forecast.date),
              ],
            ),
            Column(
              children: [
                WeatherForecastText(
                  text: "${forecast.description}",
                ),
              ],
            ),
            Column(
              children: [
                WeatherForecastText(
                  text: "Max: ${extractStringValue(forecast.maxTemperature)}",
                ),
                WeatherForecastText(
                  text: "Min: ${extractStringValue(forecast.minTemperature)}",
                ),
              ],
            ),
          ],
        ),
        padding: EdgeInsets.all(5),
      ),
      color: Colors.blue,
    );
  }
}
