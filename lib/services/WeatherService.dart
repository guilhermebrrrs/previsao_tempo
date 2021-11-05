import 'package:previsao_tempo/entities/WeatherForecastItem.dart';

class WeatherForecastService {
  List<WeatherForecastItem> getLatestForecasts() {
    return [
      WeatherForecastItem(
        description: 'description',
        currentTemperature: 10,
        time: 'time',
      ),
      WeatherForecastItem(
        description: 'description',
        currentTemperature: 20,
        time: 'time',
      ),
    ];
  }
}
