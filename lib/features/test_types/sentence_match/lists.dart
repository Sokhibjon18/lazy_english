import 'package:flutter/material.dart';

List<String> vocabulary = [
  'Olma',
  'Banan',
  'Anor',
  'Uzum',
  'Mango',
  'Qulpnayhjghkfhfh'
];

List<String> remuvVocabulary = [];

List<Color> buttonColors = [
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
];
List<Color> colorButton = [
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
  const Color(0xFFFFFFFF),
];

List<Color> selectedButtonColor = [
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
  const Color(0xFFEEEEEE),
];

List<Color> textColors = [
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
];
List<Color> colorText = [
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
  const Color(0xFF212121),
];
String a = 'I walk and she swim';
List<String> answer = ['I', 'walk', 'and', 'she', 'swim'];

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

List<String> separatevocabulary(String text) {
  List<String> vocabulary = text.split(' ');
  return vocabulary;
}

@override
void initState() {
  vocabulary.addAll(separatevocabulary(a));
  vocabulary.shuffle();
}

Map<String, Color> vovabularys = {
  'Olma': const Color(0xFFFFFFFF),
  'Anor': const Color(0xFFFFFFFF),
  'Salom': const Color(0xFFFFFFFF),
  'Qovun': const Color(0xFFFFFFFF),
  'Bratan': const Color(0xFFFFFFFF),
  'Qondaye': const Color(0xFFFFFFFF),
  'Tinchmi': const Color(0xFFFFFFFF),
  'U': const Color(0xFFFFFFFF),
};
