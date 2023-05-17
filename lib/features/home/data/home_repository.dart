import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lazy_english/features/home/model/challenge.dart';

class HomeRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void getChallenges() async {
    try {
      var result = await _firestore.collection('challenges').get();
      var challenges = result.docs.map((e) => Challenge.fromMap(e.data())).toList();
      log(challenges.toString());
    } on FirebaseException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString());
    }
  }
}
