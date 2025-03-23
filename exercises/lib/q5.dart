import 'dart:io';

void main() {
  print('Enter sentence');
  String sentence = stdin.readLineSync()!;
 
  String longest = findLongestWord(sentence);
  print('the longest word is $longest');
}

String findLongestWord(String sentence) {
  List<String> words = sentence.split(' ');

  String longestWord = ' ';

  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }
  return longestWord;
}
