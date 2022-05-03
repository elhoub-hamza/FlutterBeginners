import 'package:flutter/material.dart';

class MyApp3 extends StatefulWidget {
  @override
  _State createState() =>  _State();
}

class _State extends State<MyApp3> {

  String _value = 'Hello world';

  void _onPressed() {
    setState((){
      _value = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name here'),
      ),
      body: Container(
          padding:const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_value),
                ElevatedButton(onPressed: _onPressed, child: const Text('Click me'),),
                TextButton(onPressed: _onPressed, child: const Text('Click me'),)
              ],
            ),
          )
      ),
    );
  }
}