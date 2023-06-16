// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Lessons {
  List challenges;
  int level;
  Lessons({
    required this.challenges,
    required this.level,
  });

  Lessons copyWith({
    List? challenges,
    int? level,
  }) {
    return Lessons(
      challenges: challenges ?? this.challenges,
      level: level ?? this.level,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'challenges': challenges,
      'level': level,
    };
  }

  factory Lessons.fromMap(Map<String, dynamic> map) {
    return Lessons(
      challenges: List.from((map['challenges'] as List)),
      level: map['level'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Lessons.fromJson(String source) =>
      Lessons.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Lessons(challenges: $challenges, level: $level)';

  @override
  bool operator ==(covariant Lessons other) {
    if (identical(this, other)) return true;

    return listEquals(other.challenges, challenges) && other.level == level;
  }

  @override
  int get hashCode => challenges.hashCode ^ level.hashCode;
}
