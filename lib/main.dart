import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angka = 0;

  void tekanTombol() {
    setState(() {
      this.angka++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Stateful"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                this.angka.toString(),
                style: TextStyle(fontSize: 10 + this.angka.toDouble()),
              ),
              RaisedButton(
                child: Text("click"),
                onPressed: tekanTombol,
              )
            ],
          ),
        ),
      ),
    );
  }
}
