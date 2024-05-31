import 'package:quizzler/questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  // ignore: prefer_final_fields
  List<Question> _questionBank = [
    Question(
        questionText:
            "Sea otters have a favorite rock they use to break open food.",
        questionAnswer: true),
    Question(
        questionText: "An ant can lift 1,000 times its body weight.",
        questionAnswer: false),
    Question(
        questionText: "Greenland is the largest island in the world.",
        questionAnswer: true),
    Question(questionText: "human body has four lungs", questionAnswer: false),
    Question(
        questionText: "Human skin regenerates every week",
        questionAnswer: false),
    Question(
        questionText:
            "Sea otters have a favorite rock they use to break open food.",
        questionAnswer: true),
    Question(
        questionText: "An ant can lift 1,000 times its body weight.",
        questionAnswer: false),
    Question(
        questionText: "Greenland is the largest island in the world.",
        questionAnswer: true),
    Question(questionText: "human body has four lungs", questionAnswer: false),
    Question(
        questionText: "Human skin regenerates every week",
        questionAnswer: false),
    Question(
        questionText:
            "Sea otters have a favorite rock they use to break open food.",
        questionAnswer: true),
    Question(
        questionText: "An ant can lift 1,000 times its body weight.",
        questionAnswer: false),
    Question(
        questionText: "Greenland is the largest island in the world.",
        questionAnswer: true),
    Question(questionText: "human body has four lungs", questionAnswer: false),
    Question(
        questionText: "Human skin regenerates every week",
        questionAnswer: false),
    Question(
        questionText:
            "Sea otters have a favorite rock they use to break open food.",
        questionAnswer: true),
    Question(
        questionText: "An ant can lift 1,000 times its body weight.",
        questionAnswer: false),
    Question(
        questionText: "Greenland is the largest island in the world.",
        questionAnswer: true),
    Question(questionText: "human body has four lungs", questionAnswer: false),
    Question(
        questionText: "Human skin regenerates every week",
        questionAnswer: false),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
