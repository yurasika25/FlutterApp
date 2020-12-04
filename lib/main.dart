import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp
    (MaterialApp(
      debugShowCheckedModeBanner:false,
      home: MyWorlds()));
}

class MyWorlds extends StatefulWidget {
  @override
  _MyWorldsState createState() => new _MyWorldsState();
}

class _MyWorldsState extends State<MyWorlds> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Colors.green,
        elevation:12,
      ),
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Text('Hey there',
              style: TextStyle(
                fontSize: 38,
                  color: Colors.green,
                  shadows: <Shadow>[
              Shadow(
                offset: Offset(10.0, 10.0),
                blurRadius: 8.0,
                color: Color.fromARGB(100, 0, 0, 1),
              ),
             ],
            ),
           ),
          ),
        ),
      ),
    );
  }
}
