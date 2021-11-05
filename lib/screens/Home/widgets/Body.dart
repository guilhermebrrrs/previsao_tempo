import 'package:flutter/material.dart';
import 'package:previsao_tempo/screens/Home/widgets/Info.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Info(
            cidade: "Itapetininga",
            descricao: "Nublado",
            temperaturaAtual: "10",
            temperaturaMaxima: "20",
            temperaturaMinima: "7",
          ),
        ],
      ),
    );
  }
}
