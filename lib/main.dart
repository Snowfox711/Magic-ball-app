import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.indigo,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {  //type 'stful'
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber  = 1;

  @override
  Widget build(BuildContext context) {

    void randomize(){
      ballNumber = Random().nextInt(5) + 1;
    }
    return Center(
      child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [

          //ballNumber
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                    setState(() {
                    randomize();
                  });
                  print(ballNumber);
                },

                child: Image.asset(
                      'images/ball$ballNumber.png'
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
