import 'package:flutter/material.dart';


class MyApp6 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp6> {

  bool _value1 = false;
  bool _value2 = false;

  void _value1Changed(bool? value) => setState(() => _value1 = value!);
  void _value2Changed(bool? value) => setState(() => _value2 = value!);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Name here'),
      ),
      body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Checkbox(value: _value1, onChanged: _value1Changed),
                CheckboxListTile(
                  value: _value2,
                  onChanged: _value2Changed,
                  title:const Text('Hello World'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle:const Text('Subtitle'),
                  secondary:const Icon(Icons.archive),
                  activeColor: Colors.red,
                )
              ],
            ),
          )
      ),
    );
  }
}