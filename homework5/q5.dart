/* Find the Longest Word
 Write a function that takes a sentence as input and returns the longest word in the sentence.
 If multiple words have the same longest length, return the first one that appears*/



void main() {
  print(findLongestWord('The quick brown fox jumped over the lazy dog'));
  print(findLongestWord('The quick brown fox jumped over the lazy dog jumped'));
}

String findLongestWord(String sentence) {
  List<String> words = sentence.split(' ');
  String longestWord = words[0];
  for (int i = 1; i < words.length; i++) {
    if (words[i].length > longestWord.length) {
      longestWord = words[i];
    }
  }
  return longestWord;
}

