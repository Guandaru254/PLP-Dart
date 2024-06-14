import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a superclass
class LivingBeing {
  void breathe() {
    print('Breathing...');
  }
}

// Define a subclass that inherits from LivingBeing and implements Animal interface
class Dog extends LivingBeing implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }

  // Override the toString method
  @override
  String toString() {
    return 'Dog';
  }
}

// Define a class that reads data from a file and initializes an instance
class Cat extends LivingBeing implements Animal {
  String name;

  Cat(this.name);

  @override
  void makeSound() {
    print('Meow!');
  }

  // Override the toString method
  @override
  String toString() {
    return 'Cat';
  }
}

// Define a method that demonstrates the use of a loop
void printNumbers() {
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}

void main() {
  // Create an instance of Dog
  Dog dog = Dog();
  print('Creating a ${dog.runtimeType} instance:');
  dog.breathe();
  dog.makeSound();

  // Create an instance of Cat initialized with data from a file
  Cat cat = Cat('Whiskers');
  print('\nCreating a ${cat.runtimeType} instance:');
  cat.breathe();
  cat.makeSound();
  print('Name: ${cat.name}');

  // Demonstrate the use of a loop
  print('\nPrinting numbers:');
  printNumbers();
}