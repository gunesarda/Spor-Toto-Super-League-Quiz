import 'package:flutter/material.dart';
import 'questions.dart'; // Importing questions and answers from a separate dart file

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Arda's App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuizHomePage(),
    );
  }
}

class QuizHomePage extends StatefulWidget {
  @override
  _QuizHomePageState createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  int _currentQuestionIndex = 0;
  int _totalScore = 0;

  void _answerSelected(int score) {
    setState(() {
      _totalScore += score;
      _currentQuestionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spor Toto Super League Quiz'),
      ),
      body: Center(
        // Güncellenen kısım
        child: _currentQuestionIndex < questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    questions[_currentQuestionIndex].questionText,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  ...questions[_currentQuestionIndex].options.map(
                        (option) => ElevatedButton(
                          onPressed: () => _answerSelected(option['score']),
                          child: Text(option['text']),
                        ),
                      ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total Score: $_totalScore/40 and the answers: 1-) Trabzonspor, 2-) Galatasaray, 3-) Fenerbahçe, 4-) Alex de Souza',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _resetQuiz,
                    child: Text('Go Back'),
                  ),
                ],
              ),
      ),
    );
  }
}
