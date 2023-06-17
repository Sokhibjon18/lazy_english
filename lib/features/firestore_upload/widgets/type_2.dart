import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lazy_english/features/firestore_upload/widgets/snackbar.dart';
import 'package:lazy_english/features/firestore_upload/widgets/take_data_textfield.dart';

class Type2Screen extends StatefulWidget {
  const Type2Screen({super.key});

  @override
  State<Type2Screen> createState() => _Type2ScreenState();
}

class _Type2ScreenState extends State<Type2Screen> {
  CollectionReference challange =
      FirebaseFirestore.instance.collection('challenge');

  late String sentence;
  late String answer;
  int? diamonds;
  int? difficulty;
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
                } else if (sentence.isEmpty) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter sentence'));
                } else if (xp == null) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter xp'));
                } else {
                  setState(() {
                    challange.add({
                      'answer': answer,
                      'diamonds': diamonds,
                      'difficulty': difficulty,
                      'sentence': sentence,
                      'xp': xp,
                      'type': 2,
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
