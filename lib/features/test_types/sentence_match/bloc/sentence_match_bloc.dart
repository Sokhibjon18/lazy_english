import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_english/features/home/data/home_repository.dart';
import 'package:lazy_english/features/test_types/sentence_match/bloc/sentence_match_event.dart';
import 'package:lazy_english/features/test_types/sentence_match/bloc/sentence_match_state.dart';

class SentenceMatchBloc extends Bloc<SentenceMatchEvent, SentenceMatchState> {
  final _repository = HomeRepository();

  SentenceMatchBloc() : super(SentenceMatchInitial()) {
    on<GetSentenceMatchInfo>((event, emit) {});
  }
}
