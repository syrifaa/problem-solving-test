import 'dart:io';

String denseRanking(List<int> prevScores, List<int> scores) {
  prevScores = prevScores.toSet().toList()..sort((a, b) => a.compareTo(b));
  List<int> ranks = [];
  for (int i = 0; i < scores.length; i++) {
    int rank = 1;
    for (int j = 0; j < prevScores.length; j++) {
      if (scores[i] < prevScores[j]) {
        rank++;
      }
    }
    ranks.add(rank);
  }
  return ranks.join(" ");
}

List<int> inputScores(int n) {
  List<int> numbers = [];
  print("Enter $n integers:");
  for (int i = 0; i < n; i++) {
    int? num = int.tryParse(stdin.readLineSync()!);
    if (num != null) {
      numbers.add(num);
    } else {
      print("Invalid input. Please enter an integer.");
      i--;
    }
  }
  return numbers;
}


void main() {
  print("Enter your number of players in the First Game:");
  int? n = int.parse(stdin.readLineSync()!);
  List<int> prevScores = inputScores(n);
  print("Enter your number of players in the Second Game:");
  int? m = int.parse(stdin.readLineSync()!);
  List<int> scores = inputScores(m);
  print(denseRanking(prevScores, scores));
}