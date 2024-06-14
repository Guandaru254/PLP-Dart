import 'dart:io';

void main() {
  // Prompt the user for a number
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  // Convert the input to an integer
  int number;
  if (input != null && int.tryParse(input) != null) {
    number = int.parse(input);

    // Check the number and print the corresponding message
    if (number > 10) {
      print('Your number is greater than 10');
    } else if (number < 10) {
      print('Your number is less than 10');
    } else {
      print('Your number is equal to 10');
    }
  } else {
    print('Please enter a valid number.');
  }
}