import 'package:flutter/material.dart';


class MyApp11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp11> {

  int _value = 0;

  void _add() => setState(() => _value++);
  void _remove() => setState(() => _value--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Hello World'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(icon:const Icon(Icons.add), onPressed: _add),
          IconButton(icon:const Icon(Icons.remove), onPressed: _remove)
        ],
      ),
      body: Container(
          padding:const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_value.toString(), style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 37.0),)
              ],
            ),
          )
      ),
    );
  }
}