import 'package:flutter/material.dart';


class MyApp16 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp16> {

  void _showBottom() {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: <Widget>[
                const Text('Some info here', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                ElevatedButton (onPressed: () => Navigator.pop(context), child:const Text('Close'),)
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name here'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                const Text('Add Widgets Here'),
                ElevatedButton(onPressed: _showBottom, child: const Text('Click me'),)
              ],
            ),
          )
      ),
    );
  }
}