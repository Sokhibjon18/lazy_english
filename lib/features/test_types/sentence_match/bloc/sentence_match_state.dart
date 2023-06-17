// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class SentenceMatchState {}

class SentenceMatchInitial extends SentenceMatchState {}

class Loading extends SentenceMatchState {}

class Failed extends SentenceMatchState {
  String message;
  Failed({required this.message});
}

class Success extends SentenceMatchState {}
