import 'package:flutter/material.dart';

class MyApp18 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp18> {

  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(message),
          actions: <Widget>[
            ElevatedButton(onPressed: () => Navigator.pop(context), child:const Text('Ok'))
          ],
        )

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Name here'),
      ),
      body: Container(
          padding:const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                const Text('Add Widgets Here'),
                ElevatedButton(onPressed: () => _showAlert(context, 'Do you like flutter, I do!'), child:const Text('Click me'),)
              ],
            ),
          )
      ),
    );
  }
}