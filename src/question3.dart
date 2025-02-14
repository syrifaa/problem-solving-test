import 'dart:io';

String isBalanced(String s) {
  List<String> stack = [];
  Map bracket = {
    ")": "(",
    "}": "{",
    "]": "[",
  };
  for (int i = 0; i < s.length; i++) {
    if (bracket.containsValue(s[i])) {
      stack.add(s[i]);
    } else if (bracket.containsKey(s[i])) {
      if (stack.isEmpty || stack.last != bracket[s[i]]) {
        return "NO";
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty ? "YES" : "NO";
}

void main() {
  print("Enter your string:");
  String s = stdin.readLineSync()!;
  print(isBalanced(s));
}