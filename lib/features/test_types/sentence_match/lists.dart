class WordChip {
  late int bottomIndex;
  String text;
  bool picked;

  WordChip({required this.text, required this.picked});
}

List<WordChip> words = [
  WordChip(text: 'I', picked: true),
  WordChip(text: 'text', picked: true),
  WordChip(text: 'walk', picked: true),
  WordChip(text: 'text2', picked: true),
  WordChip(text: 'and', picked: true),
  WordChip(text: 'text3', picked: true),
  WordChip(text: 'she', picked: true),
  WordChip(text: 'text4', picked: true),
  WordChip(text: 'swims', picked: true)
];

List<WordChip> removeWords = [];

bool compareLists(List list1, List list2) {
  if (list1.length != list2.length || list1.runtimeType != list2.runtimeType) {
    return false;
  }
  for (int i = 0; i < list1.length; i++) {
    if (list1[i] != list2[i]) {
      return false;
    }
  }

  return true;
}

List<String> answers = ['I', 'Walk', 'and', 'she', 'swims'];

bool presssed = true;
