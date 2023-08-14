import 'package:flutter_application_1/quiz/questions.dart';

class QuizQuestions {
  int _questionNumber = 0;
  final List<Questions> _questionsAnswers = [
    Questions(
        'This is Abdul Rehman. I will become a good flutter developer InshaAllah',
        true),
    Questions('Hello, How are you ? are you good ?', false),
    Questions(
        'I know it ie very hard time for me and i am very disturbed currently.',
        true),
  ];

  String getQuestions() {
    return _questionsAnswers[_questionNumber].questions!;
  }

  bool getAnswers() {
    return _questionsAnswers[_questionNumber].answers!;
  }

  void nextQuestion() {
    if (_questionNumber < _questionsAnswers.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionsAnswers.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
