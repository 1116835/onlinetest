import 'package:flutter/material.dart';
import 'package:online/data/questions.dart';
import 'package:online/questions_screen.dart';
import 'package:online/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void swichScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  Widget build(context) {
    Widget screenWidget = StartScreen(swichScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 246, 242, 136),
              Color.fromARGB(255, 237, 148, 120)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}


// flutter executed when StatefulWidget's State object is initialzed

// initState(): Executed by Flutter when the StatefulWidget's State object is initialized



// flutter executed and after setState()was called, build Widget

// build(): Executed by Flutter when the Widget is built for the first time AND after setState() was called



// flutter executed the Widget, then delete

// dispose(): Executed by Flutter right before the Widget will be deleted (e.g., because it was displayed conditionally)
