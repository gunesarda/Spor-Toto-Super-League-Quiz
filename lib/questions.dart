class Question {
  String questionText;
  List<Map<String, dynamic>> options;

  Question({required this.questionText, required this.options});
}

final List<Question> questions = [
  Question(
    questionText: 'What is the last Spor Toto Super League winner?',
    options: [
      {'text': 'Trabzon', 'score': 10},
      {'text': 'Galatasaray', 'score': 0},
      {'text': 'Beşiktaş', 'score': 0},
      {'text': 'Fenerbahçe', 'score': 0},
    ],
  ),
  Question(
    questionText:
        'In our football history, which team has had the greatest success in Europe?',
    options: [
      {'text': 'Galatasaray', 'score': 10},
      {'text': 'Fenerbahçe', 'score': 0},
      {'text': 'Beşiktaş', 'score': 0},
      {'text': 'Umraniyespor', 'score': 0},
    ],
  ),
  Question(
    questionText:
        'Which team has the earliest championship in the history of the Super League?',
    options: [
      {'text': 'Fenerbahçe', 'score': 10},
      {'text': 'Beşiktaş', 'score': 0},
      {'text': 'Galatasaray', 'score': 0},
      {'text': 'Trabzonspor', 'score': 0},
    ],
  ),
  Question(
    questionText: 'Who is the top scorer in Fenerbahçe history?',
    options: [
      {'text': 'Moussa Sow', 'score': 0},
      {'text': 'Alex De Souza', 'score': 10},
      {'text': 'Cristiano Ronaldo', 'score': 0},
      {'text': 'Guiza', 'score': 0},
    ],
  ),
];
