import 'package:flutter/material.dart';
import 'package:previsao_tempo/entities/WeatherForecastItem.dart';
import 'package:previsao_tempo/helpers/constants.dart';
import 'package:previsao_tempo/helpers/utils.dart';
import 'package:previsao_tempo/screens/Home/widgets/Forecasts.dart';
import 'package:previsao_tempo/screens/Home/widgets/Info.dart';
import 'package:previsao_tempo/services/WeatherService.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late SharedPreferences sharedPreferences;
  WeatherForecastItem? forecasts;
  String? textValue;

  @override
  void initState() {
    super.initState();
    (() async {
      sharedPreferences = await SharedPreferences.getInstance();
      textValue = sharedPreferences.get(CITY_NAME) as String?;

      if (textValue != null) {
        dynamic fc =
            await WeatherForecastService().getLatestForecasts(textValue);
        setState(() {
          this.textValue = textValue;
          forecasts = fc;
        });
      }
    })();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          textValue == null
              ? Padding(
                  child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Cidade',
                    ),
                    onChanged: (String value) => textValue = value,
                  ),
                  padding: EdgeInsets.all(12),
                )
              : Padding(padding: EdgeInsets.all(5)),
          textValue == null
              ? Padding(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.search),
                    label: Text("Procurar"),
                    onPressed: () async {
                      if (textValue != null) {
                        sharedPreferences.setString(CITY_NAME, textValue!);
                        dynamic fc = await WeatherForecastService()
                            .getLatestForecasts(textValue);
                        setState(() => forecasts = fc);
                      }
                    },
                  ),
                  padding: EdgeInsets.all(0),
                )
              : Padding(
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    icon: Icon(Icons.delete),
                    label: Text("Apagar"),
                    onPressed: () {
                      sharedPreferences.remove(CITY_NAME);
                      setState(() {
                        forecasts = null;
                        textValue = null;
                      });
                    },
                  ),
                  padding: EdgeInsets.all(0),
                ),
          forecasts != null
              ? Info(
                  city: extractStringValue(forecasts?.city ?? ""),
                  description: extractStringValue(forecasts?.description ?? ""),
                  currentTemperature:
                      extractStringValue(forecasts?.currentTemperature ?? ""),
                  maxTemperature: extractStringValue(
                      forecasts?.latestForecasts[0].maxTemperature ?? ""),
                  minTemperature: extractStringValue(
                      forecasts?.latestForecasts[0].maxTemperature ?? ""),
                )
              : Padding(padding: EdgeInsets.all(5)),
          forecasts != null
              ? Forecasts(
                  forecasts: forecasts?.latestForecasts ?? [],
                )
              : Padding(padding: EdgeInsets.all(5)),
        ],
      ),
    );
  }
}
