import 'package:flutter/foundation.dart';
import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question('In the animation film “Finding Nemo,” the main protagonist is a pufferfish. ', false),
    Question('Is Mount Kilimanjaro the world’s tallest peak? ', false),
    Question('Spaghetto is the singular form of the word spaghetti. ', true),
    Question('Pinocchio was Walt Disney’s first animated feature film in full color. ', false),
    Question('Venezuela is home to the world’s highest waterfall. ', true),
    Question('Coffee is a berry-based beverage. ', true),
    Question('Polar bears can only live in the Arctic region, not in the Antarctic. ',true),
    Question('The United Kingdom is almost the same size as France. ', false),
    Question('The moon is wider than Australia. ', false),
    Question('Seahorses have stomachs, which aid in the digestion of food. ', false),
    Question('The first Disney princess was Cinderella. ', false),
    Question('Patients with COVID-19 may use ibuprofen, aspirin, or naproxen as anti-inflammatory medications. ', true),
    Question('In Scotland, the unicorn is their national animal. ', true),
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
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      if (kDebugMode) {
        print('Now returning true');
      }
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}