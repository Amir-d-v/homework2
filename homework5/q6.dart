/* Count Words in a Sentence
 Write a function that counts the number of words in a given sentence.
 Words are separated by spaces, and the function should ignore extra spaces*/

void main() {
  print(countWords('thrwat samy'));
  print(countWords('0'));
}

int countWords(String sentence) {
  List<String> words = sentence.split(' ');
  int count = 0;
  for (int i = 0; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      count++;
    }
  }
  return count;
}

