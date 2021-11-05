import 'package:flutter/material.dart';
import 'package:previsao_tempo/screens/Home/Home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: "Previsão do Tempo",
    );
  }
}
