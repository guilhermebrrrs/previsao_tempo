import 'package:flutter/material.dart';
import 'package:previsao_tempo/entities/WeatherForecastItem.dart';
import 'package:previsao_tempo/helpers/utils.dart';
import 'package:previsao_tempo/screens/Home/widgets/Forecasts.dart';
import 'package:previsao_tempo/screens/Home/widgets/Info.dart';
import 'package:previsao_tempo/services/WeatherService.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  WeatherForecastItem? forecasts;
  TextEditingController _controller = TextEditingController();
  String? textValue;

  @override
  void initState() {
    super.initState();

    (() async {
      dynamic fc = await WeatherForecastService()
          .getLatestForecasts("Itapetininga");
      setState(() => forecasts = fc);
    })();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Text',
              ),
              onChanged: (String value) => textValue = value,
            ),
            padding: EdgeInsets.all(12),
          ),
          Padding(
            child: ElevatedButton(
              onPressed: () async {
                dynamic fc = await WeatherForecastService()
                    .getLatestForecasts(textValue);
                setState(() => forecasts = fc);
              },
              child: Text("Procurar"),
            ),
            padding: EdgeInsets.all(0),
          ),
          Info(
            city: extractStringValue(forecasts?.city ?? ""),
            description: extractStringValue(forecasts?.description ?? ""),
            currentTemperature:
                extractStringValue(forecasts?.currentTemperature ?? ""),
            maxTemperature: extractStringValue(
                forecasts?.latestForecasts[0].maxTemperature ?? ""),
            minTemperature: extractStringValue(
                forecasts?.latestForecasts[0].maxTemperature ?? ""),
          ),
          Forecasts(
            forecasts: forecasts?.latestForecasts ?? [],
          ),
        ],
      ),
    );
  }
}
