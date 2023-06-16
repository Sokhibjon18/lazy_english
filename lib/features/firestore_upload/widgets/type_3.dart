import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lazy_english/features/firestore_upload/widgets/snackbar.dart';

import 'package:lazy_english/features/firestore_upload/widgets/take_data_textfield.dart';

class Type3Screen extends StatefulWidget {
  const Type3Screen({super.key});

  @override
  State<Type3Screen> createState() => _Type3ScreenState();
}

class _Type3ScreenState extends State<Type3Screen> {
  CollectionReference challange =
      FirebaseFirestore.instance.collection('challenge');
  List<String> options = [];
  late String sentence;
  late String answer;
  int? diamonds;
  int? difficulty;
  late String option1;
  late String option2;
  late String option3;
  int? xp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          TakeDataTextfield(
            onChanged: (value) {
              sentence = value;
            },
            labelText: 'sentence',
          ),
          const SizedBox(height: 16),
          TakeDataTextfield(
            onChanged: (value) {
              answer = value;
            },
            labelText: 'answer',
          ),
          const SizedBox(height: 16),
          TakeDataTextfield(
            onChanged: (value) {
              option1 = value;
            },
            labelText: 'option 1',
          ),
          const SizedBox(height: 16),
          TakeDataTextfield(
            onChanged: (value) {
              option2 = value;
            },
            labelText: 'option 2',
          ),
          const SizedBox(height: 16),
          TakeDataTextfield(
            onChanged: (value) {
              option3 = value;
            },
            labelText: 'option 3',
          ),
          const SizedBox(height: 16),
          TakeDataTextfield(
            onChanged: (value) {
              diamonds = int.tryParse(value) ?? 0;
            },
            labelText: 'diamonds',
          ),
          const SizedBox(height: 16),
          TakeDataTextfield(
            onChanged: (value) {
              difficulty = int.tryParse(value) ?? 0;
            },
            labelText: 'difficulty',
          ),
          const SizedBox(height: 16),
          TakeDataTextfield(
            onChanged: (value) {
              xp = int.tryParse(value) ?? 0;
            },
            labelText: 'xp',
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                if (diamonds == null) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter diamonds'));
                } else if (answer.isEmpty) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter answer'));
                } else if (difficulty == null) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter diamonds'));
                } else if (option1.isEmpty) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter option 1'));
                } else if (option2.isEmpty) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter option 2'));
                } else if (option3.isEmpty) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter option 3'));
                } else if (sentence.isEmpty) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter sentence'));
                } else if (xp == null) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter xp'));
                } else {
                  setState(() {
                    options.add(option1);
                    options.add(option2);
                    options.add(option3);
                    challange.add({
                      'answer': answer,
                      'diamonds': diamonds,
                      'difficulty': difficulty,
                      'sentence': sentence,
                      'options': options,
                      'xp': xp,
                      'type': 3,
                    });
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF543ACC),
                  shape: const StadiumBorder()),
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
