import 'package:flutter/material.dart';


class MyApp8 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp8> {

  bool _value1 = false;
  bool _value2 = false;

  //void _onChanged1(bool value) => setState(() => _value1 = value);
  //void _onChanged2(bool value) => setState(() => _value2 = value);
  void _onChanged1(bool? value) => setState(()=>_value1 = value!);
  void _onChanged2(bool? value) => setState(()=>_value2 = value!);

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
                Switch(value: _value1, onChanged: _onChanged1),
                SwitchListTile(
                  value: _value2,
                  onChanged: _onChanged2,
                  title:const Text(
                    'Hello World',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}