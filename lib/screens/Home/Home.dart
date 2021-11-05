import 'package:flutter/material.dart';
import 'package:previsao_tempo/screens/Home/widgets/Body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
