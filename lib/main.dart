import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int imgNumber = 0;

  int randomeizer() {
    return Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      imgNumber = randomeizer();
                    });
                  },
                  child: Image.asset("images/ball$imgNumber.png")),
            ),
            SizedBox(
              height: 15.0,
              child: Divider(
                height: 5.0,
                color: Colors.white30,
              ),
            ),
            Text(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
              "Ask for any yes or no qustion and the magical 8 ball will answer !",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
