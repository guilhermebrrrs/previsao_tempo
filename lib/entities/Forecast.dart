import 'package:previsao_tempo/helpers/utils.dart';

class Forecast {
  final String date;
  final String description;
  final String maxTemperature;
  final String minTemperature;
  final String weekday;

  Forecast({
    required this.date,
    required this.description,
    required this.maxTemperature,
    required this.minTemperature,
    required this.weekday,
  });

  factory Forecast.fromJson(Map<String, dynamic> objJson) => Forecast(
        date: extractStringValue(objJson["date"]),
        description: extractStringValue(objJson["description"]),
        maxTemperature: extractStringValue(objJson["max"].toString()),
        minTemperature: extractStringValue(objJson["min"].toString()),
        weekday: extractStringValue(objJson["weekday"]),
      );
}
