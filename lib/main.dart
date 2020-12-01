import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Magic 8 Ball'),
          ),
          body: Magic8ball(
          ),
        ),
      ),
    );

class Magic8ball extends StatefulWidget {
  @override
  _Magic8ballState createState() => _Magic8ballState();
}
class _Magic8ballState extends State<Magic8ball> {
  var b=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: (){
            setState(() {
              b = Random().nextInt(5)+1;
            });
          },
          child: Image(
            image: AssetImage('images/ball$b.png'),
          ),
        ),
      ),
    );
  }
}
