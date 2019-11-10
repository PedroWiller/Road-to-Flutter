import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Text("1"),
          ),
          Container(
            color: Colors.blue,
            child: Text("2"),
          ),
          Container(
            color: Colors.yellow,
            child: Text("3"),
          ),
          Container(
            color: Colors.green,
            child: Text("4"),
          ),
          Container(
            color: Colors.pink,
            child: Text("5"),
          ),
          Container(
            color: Colors.amber,
            child: Text("6"),
          ),
        ],
      ),
    );
  }
}
