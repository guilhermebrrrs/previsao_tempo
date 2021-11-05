import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String city;
  final String description;
  final String currentTemperature;
  final String maxTemperature;
  final String minTemperature;

  Info({
    required this.city,
    required this.description,
    required this.currentTemperature,
    required this.maxTemperature,
    required this.minTemperature,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                  Icon(Icons.brightness_6_outlined),
                ],
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          ),
          Padding(
            child: Text(
              city,
              style: TextStyle(
                color: Color.fromRGBO(39, 68, 114, 1),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(5),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Padding(
                  child: Row(
                    children: [
                      Text(
                        "$currentTemperature° C",
                        style: TextStyle(
                          color: Color.fromRGBO(39, 68, 114, 1),
                          fontSize: 32,
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  padding: EdgeInsets.all(5),
                ),
                VerticalDivider(
                  color: Color.fromRGBO(39, 68, 114, 1),
                  thickness: 1,
                ),
                Column(
                  children: [
                    Text(
                      "Max: $maxTemperature° C",
                      style: TextStyle(
                        color: Color.fromRGBO(39, 68, 114, 1),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Min: $minTemperature° C",
                      style: TextStyle(
                        color: Color.fromRGBO(39, 68, 114, 1),
                        fontSize: 16,
                      ),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              description,
              style: TextStyle(
                color: Color.fromRGBO(39, 68, 114, 1),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      padding: EdgeInsets.all(5),
    );
  }
}
