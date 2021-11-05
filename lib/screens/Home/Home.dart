import 'package:flutter/material.dart';
import 'package:previsao_tempo/entities/WeatherForecastItem.dart';
import 'package:previsao_tempo/screens/Home/widgets/Body.dart';
import 'package:previsao_tempo/services/WeatherService.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<WeatherForecastItem> latestForecasts;
  WeatherForecastService weatherForecastService = WeatherForecastService();

  @override
  void initState() {
    super.initState();
    latestForecasts = weatherForecastService.getLatestForecasts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Previsão do Tempo"),
      ),
      body: Body(),
    );
  }
}
