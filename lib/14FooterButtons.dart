import 'package:flutter/material.dart';

class MyApp14 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp14> {

  String _value = '';

  void _onClick(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Name here'),
      ),

      persistentFooterButtons: <Widget>[
        IconButton(icon:const Icon(Icons.timer), onPressed: () => _onClick('Button 1')),
        IconButton(icon:const Icon(Icons.people), onPressed: () => _onClick('Button 2')),
        IconButton(icon:const Icon(Icons.map), onPressed: () => _onClick('Button 3')),
      ],

      body: Container(
          padding:const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_value)
              ],
            ),
          )
      ),
    );
  }
}