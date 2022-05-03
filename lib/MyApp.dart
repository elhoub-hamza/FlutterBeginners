import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
 @override
 _State createState() =>  _State();
}

class _State extends State<MyApp>{
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Name Here"),
     ),
     body: Container(
       padding: const EdgeInsets.all(32.0),
       child: Center(
         child: Column(
           children: const <Widget>[
             Text("Hello world"),
           ],
         ),
       ),
     ),
   );
 }
}
