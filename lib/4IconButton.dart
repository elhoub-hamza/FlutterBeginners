import 'package:flutter/material.dart';


class MyApp4 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp4> {

  int _value= 0;

  void _add() {
    setState((){
      _value++;
    });
  }

  void _subtract() {
    setState((){
      _value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('Name here'),
      ),
      body:  Container(
          padding:  const EdgeInsets.all(32.0),
          child:  Center(
            child:  Column(
              children: <Widget>[
                 Text('Value = $_value'),
                 IconButton(icon:  const Icon(Icons.add), onPressed: _add),
                 IconButton(icon:  const Icon(Icons.remove), onPressed: _subtract)

              ],
            ),
          )
      ),
    );
  }
}