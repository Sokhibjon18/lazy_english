import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lazy_english/features/home/model/challenge.dart';
import 'package:lazy_english/features/home/model/lessons.dart';

class HomeRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void getChallenges() async {
    try {
      var result = await _firestore.collection('challenges').get();
      var challenges =
          result.docs.map((e) => Challenge.fromMap(e.data())).toList();
      log(challenges.toString());
    } on FirebaseException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<List<dynamic>> getLessons() async {
    try {
      var lessonResult = await _firestore.collection('lessons').get();
      var lessons =
          lessonResult.docs.map((e) => Lessons.fromMap(e.data())).toList();
      var takenChallangesById;
      List challangesAdded = [];
      for (var i = 0; i < lessons.length; i++) {
        takenChallangesById = await _firestore
            .collection('challenges')
            .doc(lessons[0].challenges[i])
            .get();
        var takingChallangeDatas = takenChallangesById.data();
        challangesAdded.add(takingChallangeDatas);
      }
      log(challangesAdded.toString());

      return challangesAdded;
    } on FirebaseException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString());
    }
    throw Exception(
        'Function execution reached the end without a return statement');
  }
}
