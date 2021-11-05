import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String cidade;
  final String descricao;
  final String temperaturaAtual;
  final String temperaturaMaxima;
  final String temperaturaMinima;

  Info({
    required this.cidade,
    required this.descricao,
    required this.temperaturaAtual,
    required this.temperaturaMaxima,
    required this.temperaturaMinima,
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
                  Switch(value: true, onChanged: (value) {}),
                  Icon(Icons.brightness_6_outlined),
                ],
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          ),
          Padding(
            child: Text(
              cidade,
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
                        "$temperaturaAtual° C",
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
                      "Max: $temperaturaMaxima° C",
                      style: TextStyle(
                        color: Color.fromRGBO(39, 68, 114, 1),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Min: $temperaturaMinima° C",
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
              descricao,
              style: TextStyle(
                color: Color.fromRGBO(39, 68, 114, 1),
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
      padding: EdgeInsets.all(5),
    );
  }
}
