import 'package:flutter/material.dart';


class MyApp13 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Name here'),
      ),
      drawer: Drawer(
        child: Container(
          padding:const EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              const Text('Hello Drawer'),
              ElevatedButton(onPressed: () => Navigator.pop(context), child:const Text('Close'),)
            ],
          ),
        ),
      ),

      body: Container(
          padding:const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children:const <Widget>[
                 Text('Add Widgets Here')
              ],
            ),
          )
      ),
    );
  }
}