import 'dart:convert';
import 'package:http/http.dart';
import 'package:previsao_tempo/helpers/Config.dart';
import 'package:previsao_tempo/entities/WeatherForecastItem.dart';

class WeatherForecastService {
  Future<WeatherForecastItem?> getLatestForecasts(String? cityName) async {
    final String uri = cityName != null || cityName != ""
        ? Config.cityEndPoint + cityName!
        : Config.cityEndPoint + "Itapetininga";

    final Response response = await get(Uri.parse(uri));

    if (response.statusCode == 400) return null;
    if (response.statusCode == 200) {
      Map<String, dynamic> it = json.decode(response.body);
      WeatherForecastItem forecastItem = WeatherForecastItem.fromJson(it["results"]);

      return forecastItem;
    }
    return null;
  }
}
