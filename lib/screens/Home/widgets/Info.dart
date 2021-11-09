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
          Padding(
            child: Text(
              city,
              style: TextStyle(
                color: Color.fromRGBO(39, 68, 114, 1),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(5),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Padding(
                  child: Column(
                    children: [
                      Row(
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
                  padding: EdgeInsets.all(2),
                ),
                VerticalDivider(
                  color: Color.fromRGBO(39, 68, 114, 1),
                  thickness: 2,
                ),
                Column(
                  children: [
                    Padding(
                      child: Text(
                        "Max: $maxTemperature° C",
                        style: TextStyle(
                          color: Color.fromRGBO(39, 68, 114, 1),
                          fontSize: 16,
                        ),
                      ),
                      padding: EdgeInsets.all(2),
                    ),
                    Padding(
                      child: Text(
                        "Min: $minTemperature° C",
                        style: TextStyle(
                          color: Color.fromRGBO(39, 68, 114, 1),
                          fontSize: 16,
                        ),
                      ),
                      padding: EdgeInsets.all(2),
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ],
      ),
      padding: EdgeInsets.all(5),
    );
  }
}
