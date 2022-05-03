import 'package:flutter/material.dart';


class MyApp19 extends StatefulWidget {
  @override
  _State createState() => _State();
}

enum Answers{YES,NO,MAYBE}

class _State extends State<MyApp19> {

  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _askUser() async {
    switch(
    await showDialog(
        context: context,
        /*
       Older Flutter Versions
        child: new SimpleDialog(
          title: new Text('Do you like Flutter?'),
          children: <Widget>[
            new SimpleDialogOption(child: new Text('Yes!!!'),onPressed: (){Navigator.pop(context, Answers.YES);},),
            new SimpleDialogOption(child: new Text('NO :('),onPressed: (){Navigator.pop(context, Answers.NO);},),
            new SimpleDialogOption(child: new Text('Maybe :|'),onPressed: (){Navigator.pop(context, Answers.MAYBE);},),
          ],
        )
        */
        builder: (BuildContext context) {
          return SimpleDialog(
            title:const Text('Do you like Flutter?'),
            children: <Widget>[
              SimpleDialogOption(child: const Text('Yes!!!'),onPressed: (){Navigator.pop(context, Answers.YES);},),
              SimpleDialogOption(child: const Text('NO :('),onPressed: (){Navigator.pop(context, Answers.NO);},),
              SimpleDialogOption(child: const Text('Maybe :|'),onPressed: (){Navigator.pop(context, Answers.MAYBE);},),
            ],
          );
        }
    )
    ) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('No');
        break;
      case Answers.MAYBE:
        _setValue('Maybe');
        break;
    }
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
                Text(_value),
                ElevatedButton(onPressed: _askUser, child: const Text('Click me'),)
              ],
            ),
          )
      ),
    );
  }
}