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
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network("https://images.unsplash.com/photo-1536315238512-4c8cebdaaf93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
              buildRow("Thema:", "Mein Urlaub"),
              buildRow("Reiseziel:", "South Korea"),
              buildRow("Reisedauer:", "3 Wochen"),
              buildRow("Aufenthaltsort:", "Seoul"),
              buildRow("Wetter:", "Super"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(attribut, wert) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
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
      ),
    );
  }
}
