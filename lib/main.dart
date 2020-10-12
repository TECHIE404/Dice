import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue[400],
          appBar: AppBar(
            title: Text('Dice'),
            backgroundColor: Colors.red,
          ),
          body: Container(
            child: DicePage(),
          )),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftdice = 1, rightdice = 1;
  @override
  Widget build(BuildContext context) {
    //leftdice = 4;
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image(
                width: 200,
                height: 200,
                image: AssetImage(
                  'images/d$leftdice.png',
                ),
              ),
              onPressed: () {
                setState(() {
                  print('Left button got pressed');
                  Random random = new Random();
                  var min = 1, max = 6;
                  leftdice = min + random.nextInt(max - min);
                  print('left dice is changed to $leftdice');
                });
              },
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image(
                width: 200,
                height: 200,
                image: AssetImage('images/d$rightdice.png'),
              ),
              onPressed: () {
                setState(() {
                  print('Right button got pressed');
                  Random random = new Random();
                  var min = 1, max = 6;
                  rightdice = min + random.nextInt(max - min);
                  print('right dice is changed to $rightdice');
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
