import 'dart:io';

String oeis(int a) {
  List<int> seq = [];
  int value = 1;
  for (int i = 1; i <= a; i++) {
      seq.add(value);
      value += i;
  }
  return seq.join("-");
}
void main() {
  print("Enter your number:");
  int? n = int.parse(stdin.readLineSync()!);
  print(oeis(n));
}