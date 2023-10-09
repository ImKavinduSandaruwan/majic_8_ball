import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Majic 8 Ball',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
        backgroundColor: Colors.blueGrey.shade800,
        ),
      body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  number = Random().nextInt(5) + 1;
                });
            },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image(image: AssetImage('images/ball$number.png'),
                ),
              ),
            ),
        ),
        const Text(
          'Developed By Kavindu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            fontSize: 20
          ),
        ),
        const Text(
          'PenDragon Technologies',
          style: TextStyle(
            letterSpacing: 3,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}


