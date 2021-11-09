import 'package:flutter/material.dart';
import 'package:previsao_tempo/screens/Home/widgets/Body.dart';

class Home extends StatelessWidget {
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
