import 'dart:io';

void main() {
  List arr = [0, 1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10];
  checkRepeating(arr);
}

void checkRepeating(List arr) {
  int i, j;
  print("Repeated Elements is :");
  for (i = 0; i < arr.length; i++) {
    for (j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        print(arr[i]);
        exit(0);
      }
    }
  }
}
