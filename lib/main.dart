import 'package:flutter/material.dart';

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black38,
          body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: QuizPage()),
          )),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
              flex: 5,
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text('This is where the question text will go.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        )),
                  ))),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.green)),
                  onPressed: () {
                    //The user picked true
                  },
                  child:
                      const Text('True', style: TextStyle(color: Colors.white)),
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.red)),
                  onPressed: () {
                    //The user picked true
                  },
                  child: const Text('False',
                      style: TextStyle(color: Colors.white)),
                )),
          )
        ]);
  }
}
