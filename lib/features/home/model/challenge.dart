import 'package:flutter/foundation.dart';

class Challenge {
  final String? sentence;
  final String? answer;
  final List<String>? options;
  final Map<String, String>? match;
  final int difficulty;
  final int diamonds;
  final int type;
  final int xp;

  Challenge({
    this.sentence,
    this.answer,
    this.options,
    this.match,
    required this.difficulty,
    required this.diamonds,
    required this.type,
    required this.xp,
  });

  Challenge copyWith({
    String? sentence,
    String? answer,
    List<String>? options,
    Map<String, String>? match,
    int? difficulty,
    int? diamonds,
    int? type,
    int? xp,
  }) {
    return Challenge(
      sentence: sentence ?? this.sentence,
      answer: answer ?? this.answer,
      options: options ?? this.options,
      match: match ?? this.match,
      difficulty: difficulty ?? this.difficulty,
      diamonds: diamonds ?? this.diamonds,
      type: type ?? this.type,
      xp: xp ?? this.xp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sentence': sentence,
      'answer': answer,
      'options': options,
      'match': match,
      'difficulty': difficulty,
      'diamonds': diamonds,
      'type': type,
      'xp': xp,
    };
  }

  factory Challenge.fromMap(Map<String, dynamic> map) {
    return Challenge(
      sentence: map['sentence'] != null ? map['sentence'] as String : null,
      answer: map['answer'] != null ? map['answer'] as String : null,
      options: map['options'] != null ? List.castFrom(map['options']) : null,
      match: map['match'] != null ? Map.castFrom(map['match']) : null,
      difficulty: map['difficulty'] as int,
      diamonds: map['diamonds'] as int,
      type: map['type'] as int,
      xp: map['xp'] as int,
    );
  }

  @override
  String toString() {
    return 'Challenge(sentence: $sentence, answer: $answer, options: $options, match: $match, difficulty: $difficulty, diamonds: $diamonds, type: $type, xp: $xp)';
  }

  @override
  bool operator ==(covariant Challenge other) {
    if (identical(this, other)) return true;

    return other.sentence == sentence &&
        other.answer == answer &&
        listEquals(other.options, options) &&
        mapEquals(other.match, match) &&
        other.difficulty == difficulty &&
        other.diamonds == diamonds &&
        other.type == type &&
        other.xp == xp;
  }
}
