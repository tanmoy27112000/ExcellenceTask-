// Question 1
// Define an array of numbers (use any random numbers).
// Write a program to print only the even numbers of the array. Do not use any library functions, need to do via for loops only

import 'dart:math';

void main() {
  List ls = [];
  for (var i = 0; i < 10; i++) {
    ls.add(Random().nextInt(10000));
  }
  for (var item in ls) {
    if (item % 2 == 0) {
      print(item);
    }
  }
}
