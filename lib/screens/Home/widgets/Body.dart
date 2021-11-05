import 'package:flutter/material.dart';
import 'package:previsao_tempo/screens/Home/widgets/Forecasts.dart';
import 'package:previsao_tempo/screens/Home/widgets/Info.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Info(
            city: "Itapetininga",
            description: "Nublado",
            currentTemperature: "10",
            maxTemperature: "20",
            minTemperature: "7",
          ),
          Forecasts(),
        ],
      ),
    );
  }
}
