import 'dart:math';
import 'dart:io';

void main() {
  int operation, num1, num2, userAnswer, correctAnaswer;
  int questionAttempted = 0, numberCorrect = 0;
  Random rand = Random();

  while (true) {
    operation = rand.nextInt(3);
    num1 = rand.nextInt(11);
    num2 = rand.nextInt(11);

    switch (operation) {
      case 0:
        print('$num1 - $num2= ');
        correctAnaswer = num1 - num2;
        break;
      case 1:
        print('$num1 + $num2= ');
        correctAnaswer = num1 + num2;
        break;
      case 2:
        print('$num1 * $num2= ');
        correctAnaswer = num1 * num2;
        break;
      default:
        break;
    }
    String inTemp = stdin.readLineSync();
    try {
      userAnswer = int.parse(inTemp);
    } on FormatException {
      print('Better luck next time');
      print('You got $numberCorrect out of $questionAttempted');
      break;
    }
    if (userAnswer == correctAnaswer) {
      print('Correct');
      numberCorrect++;
    } else {
      print('You got it worng');
    }
    questionAttempted++;
  }
}
