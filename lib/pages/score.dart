import 'package:flutter/material.dart';
import 'package:quiz_app/layouts/gradient_background.dart';
import 'package:quiz_app/pages/home.dart';

class ScorePage extends StatelessWidget {
  final int score;
  final int numberOfItems;
  const ScorePage(
      {super.key, required this.score, required this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Your score is',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '$score/$numberOfItems',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Text('Go to home'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
