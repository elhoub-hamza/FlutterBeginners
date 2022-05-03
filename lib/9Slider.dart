import 'package:flutter/material.dart';


class MyApp9 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp9> {

  double _value = 0.0;
  void _sv(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Name here'),
      ),
      body: Container(
          padding:const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Value: ${(_value * 100).round()}'),
                Slider(value: _value, onChanged: _sv)
              ],
            ),
          )
      ),
    );
  }
}