// ignore_for_file: avoid_print

import 'dart:html';

import 'package:flutter/material.dart';

class Quizzler extends StatefulWidget {
  const Quizzler({super.key});

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  // List<Icon> scoreboard = [];
  List<String> questions = [
    " This is your baby",
    "Are you Single?",
    "Are you vigin?"
  ];
  List<bool> answer = [false, true, true];
  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Expanded(
                  flex: 5,
                  child: Text(
                    questions[questionNumber],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 246, 242, 242),
                        fontSize: 25),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Expanded(
              child: TextButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {
                  bool correctAnswer = answer[questionNumber];
                  if (correctAnswer == true) {
                    print("User got it right!");
                  } else {
                    print("User got it wrong!");
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: const Text(
                  "True",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Expanded(
              child: TextButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  bool correctAnswer = answer[questionNumber];
                  if (correctAnswer == false) {
                    print("User got it right!");
                  } else {
                    print("User got it wrong!");
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: const Text(
                  "False",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          // Row(
          //   children: [scoreboard],
          // )
        ],
      ),
    );
  }
}

/* " This is your baby",false,
    "Are you Single?",true,
    "Are you vigin?"true,
*/
