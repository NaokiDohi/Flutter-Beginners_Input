import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  double _value = 0.0;

  void _setValue(double value) {
    setState(() => _value = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Name here"),
        ),
        body: Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(children: <Widget>[
              new Text('value: ${(_value * 100).round()}'),
              new Slider(value: _value, onChanged: _setValue)
            ]),
          ),
        ));
  }
}
