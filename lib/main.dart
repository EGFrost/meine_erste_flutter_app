import 'package:flutter/material.dart';
//strg shift alt L !

void main() => runApp(MyApp()); // Startpunkt

class MyApp extends StatelessWidget {
  //Widget = UI Element
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Material ist eine Designart
      title: 'Erste Seite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ErsteSeite(),
    );
  }
}

class ErsteSeite extends StatefulWidget {
  @override
  _ErsteSeiteState createState() => _ErsteSeiteState();
}

class _ErsteSeiteState extends State<ErsteSeite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tolle App!"),
      ),
      body: Column(
        children: <Widget>[
          buildRow("Thema:", "Mein Urlaub"),
          buildRow("Reiseziel:", "South Korea"),
        ],
      ),
    );
  }

  Row buildRow(attribut, wert) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          attribut,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        Text(
          wert,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ],
    );
  }
}
