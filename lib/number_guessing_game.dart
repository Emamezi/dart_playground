import 'dart:math';
import 'dart:io';

void main() {
  int guess;
  int answer;
  // int userRange;
  Random rand = Random();

  do {
    print('SET NUMBER RANGE');
    String numRange = stdin.readLineSync();
    int userRange = int.parse(numRange);
    answer = rand.nextInt(userRange);
    print('ENTER YOUR GUESS:');
    String temp = stdin.readLineSync();
    guess = int.parse(temp);
    if (guess < answer) {
      print('too low');
    } else if (guess > answer) {
      print('too high!');
    }
  } while (guess != answer);
  {
    print('You got it');
  }
}
