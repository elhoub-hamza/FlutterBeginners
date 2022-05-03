import 'package:flutter/material.dart';


class MyApp17 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp17> {

  final GlobalKey<ScaffoldState> _scaffoldstate = GlobalKey<ScaffoldState>();

  void _showbar() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login failed")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldstate,
      appBar: AppBar(
        title:const Text('Name here'),
      ),
      body: Container(
          padding:const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                const Text('Add Widgets Here'),
                ElevatedButton(onPressed: _showbar, child:const Text('Click me'),)
              ],
            ),
          )
      ),
    );
  }
}