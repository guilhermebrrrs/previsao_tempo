import 'package:previsao_tempo/entities/Forecast.dart';
import 'package:previsao_tempo/helpers/utils.dart';

class WeatherForecastItem {
  final String city;
  final String currentTemperature;
  final String description;
  final List<Forecast> latestForecasts;

  WeatherForecastItem({
    required this.city,
    required this.currentTemperature,
    required this.description,
    required this.latestForecasts,
  });

  factory WeatherForecastItem.fromJson(Map<String, dynamic> objJson) =>
      WeatherForecastItem(
        city: extractStringValue(objJson["city"]),
        currentTemperature: extractStringValue(objJson["temp"].toString()),
        description: extractStringValue(objJson["description"]),
        latestForecasts: (objJson["forecast"] as List)
            .map((item) => Forecast.fromJson(item))
            .toList(),
      );
}
