import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('The hexadecimal number system contains digits from 1 - 15.', false),
    Question('MS Word is a hardware.', false),
    Question('CPU stands for Central Performance Unit.', true),
    Question('The Language that the computer can understand is called Machine Language.', true),
    Question('Magnetic Tape used random access method.', false),
    Question('Worms and trojan horses are easily detected and eliminated by antivirus software.', true),
    Question(
        'Dot-matrix, Deskjet, Inkjet and Laser are all types of Printers.',
        true),
    Question(
        'GNU / Linux is a open source operating system.',
        true),
    Question(
        'IPv6 Internet Protocol address is represented as eight groups of four Octal digits.',
        false),
    Question(
        'Are Strings Mutable in Python.',
        false),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Is Creeper Virus the first known Computer Virus.',
        true),
    Question(
        'Was Google the first search engine on internet.',
        true),
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
