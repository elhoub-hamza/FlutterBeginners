import 'package:flutter/material.dart';


class MyApp22 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp22> {
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
                const Text('Image Demo'),
                Expanded(child: Image.asset('images/flutter.jpg')),
              ],
            ),
          )
      ),
    );
  }
}