import 'package:flutter/material.dart';

class MyApp1 extends StatefulWidget {
  @override
  _State createState() =>  _State();
}

class _State extends State<MyApp1> {

  String _value = 'Hello World';

  void _onPressed() {
    setState((){
      _value = 'My name is Hamza Elhoub';
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('Hi How Are you'),
      ),
      body:  Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Text(_value),
            RaisedButton(onPressed: _onPressed, child:const Text('Click me'),)
          ],
        ),
      ),
    );
  }
}