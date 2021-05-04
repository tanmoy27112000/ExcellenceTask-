// Question 2
// Find the maximum consecutive 1's in an array of 0's and 1's.
// Example:
// a) 00110001001110 - Output :3 [Max num of consecutive 1's is 3]
// b) 1000010001 - Output :1 [Max num of consecutive 1's is 1]

import 'dart:math';

void main() {
  List ls = ["00110001001110", "1000010001"];
  for (String item in ls) {
    int count = 0;
    int result = 0;
    for (int i = 0; i < item.length; i++) {
      if (int.parse(item[i]) == 0) {
        count = 0;
      } else {
        count++;
        result = max(result, count);
      }
    }
    print(result);
  }
}

