import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/navlogo.png',
            width: 300,
          ),
          const SizedBox(height: 80),
          Text(
            'To Buy Freshest Food ingredient',
            style: TextStyle(color: Colors.amberAccent, fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.access_alarm),
            label: const Text('Start'),
          ),
        ],
      ),
    );
  }
}
