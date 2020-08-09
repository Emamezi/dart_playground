import 'dart:io';

void main() {
  print('A:Convert celsius to Farenheit\n B: Convert Farenheit to Celsius');
  String selection;

  do {
    selection = stdin.readLineSync().toUpperCase();
  } while (selection != 'A' && selection != 'B');

  print('Enter the starting temperature');
  String inTemp = stdin.readLineSync();
  int temp = int.parse(inTemp);

  switch (selection) {
    case 'A':
      print('$temp degrees celsius is ${1.8 * temp + 32} degrees Farenheit');
      break;
    case 'B':
      print('$temp degrees Farenheit is ${(temp + 32) / 1.8} degrees Celsius');
      break;
    default:
      break;
  }
}
