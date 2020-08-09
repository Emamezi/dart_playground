import 'dart:math';
import 'dart:io';

String getPlayerMove() {
  print('Pick (R)ock, (P)aper or (S)cissors?');
  String selection = stdin.readLineSync().toUpperCase();
  switch (selection) {
    case 'R':
      return 'Rock';
      break;
    case 'P':
      return 'Paper';
      break;
    case 'S':
      return 'Scissors';
      break;
    default:
      return 'Quit';
  }
}

String getComputerMove() {
  Random rand = Random();
  int computerSelection = rand.nextInt(2);
  switch (computerSelection) {
    case 0:
      return 'Rock';
      break;
    case 1:
      return 'Paper';
      break;
    case 2:
      return 'Scissors';
      break;
    default:
  }
}

String whoWon(String playerMove, String computerMove) {
  if (playerMove == computerMove) {
    print('Tie');
  } else if (playerMove == 'Rock' && computerMove == 'Scissors') {
    print('You Win');
  } else if (playerMove == 'Scissors' && computerMove == 'Paper') {
    print('You Win');
  } else if (playerMove == 'Paper' && computerMove == 'Rock') {
    print('You Win');
  } else {
    print('Computer Wins!!');
  }
}

void repeat(String word, [int repetitions = 20, String exclamation = ""]) {
  if (repetitions != null) {
    for (int i = 0; i < repetitions; i++) {
      print(word);
    }
  } else {
    print(word);
  }
}

void main() {
  while (true) {
    String playerMove = getPlayerMove();
    String computerMove = getComputerMove();
    if (playerMove == 'Quit') {
      return;
    }
    print('You selected $playerMove');
    print('Computer chose $computerMove');
    print(whoWon(playerMove, computerMove));
  }
}
