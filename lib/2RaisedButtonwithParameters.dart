import 'package:flutter/material.dart';


class MyApp2 extends StatefulWidget {
  @override
  _State createState() =>  _State();
}

class _State extends State<MyApp2> {

  String _value = 'Hello World';

  void _onPressed(String value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('Name here'),
      ),
      body:  Container(
          padding: const EdgeInsets.all(32.0),
          child:  Center(
            child:  Column(
              children: <Widget>[
                 Text(_value),
                ElevatedButton(onPressed: () => _onPressed('Hello Hamza'), child: const Text('Click me'),)
              ],
            ),
          )
      ),
    );
  }
}