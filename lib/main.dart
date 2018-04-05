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

  List _pets = ['Dogs', 'Cats', 'Fish', 'Birds', 'Lizards'];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Available Pets'),
              new Expanded(child: new ListView.builder(
                  itemCount: _pets.length,
                  itemBuilder: (BuildContext context, int index) {
                       return new Text(_pets.elementAt(index));
                  }
              )),

            ],
          ),
        )
      ),
    );
  }
}
