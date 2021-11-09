import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String? get apiKey => _get("API_KEY");
  static String? get apiBaseUrl => _get("API_BASE_URL");
  static String get cityEndPoint => "${Config.apiBaseUrl}weather?key=${Config.apiKey}&city_name=";

  static String? _get(String name) => dotenv.env[name] ?? null;
}
