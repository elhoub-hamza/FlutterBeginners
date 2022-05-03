import 'package:flutter/material.dart';


class MyApp21 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp21> {
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
                Card(
                  child: Container(
                    padding:const EdgeInsets.all(32.0),
                    child: Column(
                      children:const <Widget>[
                        Text('Hello World!'),
                        Text('How are you?')
                      ],
                    ),
                  ),
                ),

                Card(
                  child: Container(
                    padding:const EdgeInsets.all(32.0),
                    child: Column(
                      children:const <Widget>[
                        Text('Hello World!'),
                        Text('How are you?')
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children:const <Widget>[
                        Text('Hello World!'),
                        Text('How are you?')
                      ],
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