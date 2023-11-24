import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(const DIceApp());
}

class DIceApp extends StatefulWidget {
  const DIceApp({Key? key}) : super(key: key);

  @override
  State<DIceApp> createState() => _DIceAppState();
}

class _DIceAppState extends State<DIceApp> {
  int dice1 = 1;
  int dice2 = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(
            child: Text('Role Dice'),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('images/dice$dice1.png'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('images/dice$dice1.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    dice1 = Random().nextInt(6) + 1;
                    dice2 = Random().nextInt(6) + 1;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.teal.shade200,
                  ),
                  fixedSize: const MaterialStatePropertyAll(
                    Size(
                      120.0,
                      50.0,
                    ),
                  ),
                ),
                child: const Text(
                  'Roll Dice',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
