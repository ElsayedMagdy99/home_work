void main() {
  String sentence = '   The quick brown  fox jumped   over  the lazy dog ';

  int wordCount = countWords(sentence);
  print("The number of words is: $wordCount");
}

int countWords(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));

  return words.length;
}
