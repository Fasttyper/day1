import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> restaurants = [
    "McDonald's",
    "Shedevr Garden",
    "Assorti",
    "Kamolon",
    "SamOsh",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (restaurants[currentIndex] != null)
                Text(
                  restaurants[currentIndex],
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                textAlign: TextAlign.center,
              ),
              Text("What do you want to eat?"),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              TextButton(
                onPressed: () {
                  _randomIndex();
                },
                child: Text("Order", style: TextStyle(color: Colors.white),),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.purple,
                  textStyle: TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ),
      ),
    ); 
  }

  void _incrementCounter() {
    setState(() {
      currentIndex != restaurants.length ? currentIndex++ : currentIndex = 0;
    });
  }

  void _randomIndex(){
    Random random = new Random();
    int index = random.nextInt(5);
    setState((){
      currentIndex = index;
    });
  }
}