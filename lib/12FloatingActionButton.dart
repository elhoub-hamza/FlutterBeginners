import 'package:flutter/material.dart';

class MyApp12 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp12> {

  String _value = '';
  void _onClicked() => setState(() => _value = DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Name here'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClicked,
        backgroundColor: Colors.red,
        mini: false,
        child:const Icon(Icons.timer),
      ),

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