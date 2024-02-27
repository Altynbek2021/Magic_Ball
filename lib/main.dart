import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: const Text("Ask me anything"),
          ),
          body: Ball()),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

int ballNumber = 1;

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[400],
      child: Center(
        child: InkWell(
          child: Image.asset('images/ball$ballNumber.png'),
          onTap: () {
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
            print("I got pressed");
          },
        ),
      ),
    );
  }
}
