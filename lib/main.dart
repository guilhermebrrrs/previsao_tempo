import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:previsao_tempo/App.dart';

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(App());
}
