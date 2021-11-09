import 'package:flutter/material.dart';

class WeatherForecastText extends StatelessWidget {
  final String text;

  WeatherForecastText({
    required this.text,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
