import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tamanho = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          buttonsList(),
          FlatButton(onPressed: () {}, child: Text("Button Flat")),
          FlatButton(onPressed: () {}, child: Text("Button Flat 1")),
          OutlineButton(onPressed: () {}, child: Text("Button Outline ")),
          OutlineButton(onPressed: () {}, child: Text("Button Outline 1")),
          Wrap(
            direction: Axis.horizontal,
            spacing: 35.0,
            runSpacing: 20.0,
            children: <Widget>[
              RaisedButton(onPressed: () {}, child: Text("Buttom 3")),
              RaisedButton(onPressed: () {}, child: Text("Buttom 2")),
              RaisedButton(onPressed: () {}, child: Text("Buttom 3")),
              RaisedButton(onPressed: () {}, child: Text("Buttom 3")),
              RaisedButton(onPressed: () {}, child: Text("Buttom 3")),
              RaisedButton(onPressed: () {}, child: Text("Buttom 3")),
              RaisedButton(onPressed: () {}, child: Text("Buttom 3")),
            ],
          ),
          AnimatedContainer(
            duration: Duration(seconds: 5),
            width: 60.0,
            height: tamanho,
            color: Colors.amber,
          ),
          RaisedButton(onPressed: () {
            setState(() {
              tamanho = 100.0;
            });
          }, child: Text("Buttom Update Conatiner")),
        ],
      ),
    );
  }
}

Widget buttonsList() {
  return ButtonBar(
    alignment: MainAxisAlignment.center,
    children: <Widget>[
      RaisedButton(
        onPressed: () {},
        child: Text("Buttom 1"),
      ),
      RaisedButton(onPressed: () {}, child: Text("Buttom 2")),
      RaisedButton(onPressed: () {}, child: Text("Buttom 3")),
      RaisedButton(onPressed: () {}, child: Text("Buttom 4")),
    ],
  );
}

