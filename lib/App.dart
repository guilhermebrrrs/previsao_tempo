import 'package:flutter/material.dart';
import 'package:previsao_tempo/screens/Home/Home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: "Previsão do Tempo",
    );
  }
}
