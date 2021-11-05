import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherForecastCard extends StatelessWidget {
  final String textValue;

  WeatherForecastCard({
    Key? key,
    required this.textValue,
  }) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        child: Text(
          textValue,
          textAlign: TextAlign.center,
        ),
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
