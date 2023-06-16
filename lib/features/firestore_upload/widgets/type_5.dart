import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lazy_english/features/firestore_upload/widgets/snackbar.dart';
import 'package:lazy_english/features/firestore_upload/widgets/take_data_textfield.dart';

class Type5Screen extends StatefulWidget {
  const Type5Screen({super.key});

  @override
  State<Type5Screen> createState() => _Type5ScreenState();
}

class _Type5ScreenState extends State<Type5Screen> {
  CollectionReference challange =
      FirebaseFirestore.instance.collection('challenge');

  int? diamonds;
  int? difficulty;
  late String match;
  int? xp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
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
              match = value;
            },
            labelText: 'match',
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
                } else if (difficulty == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      snackbarForUploadErrors('enter difficulty'));
                } else if (match.isEmpty) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter match'));
                } else if (xp == null) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(snackbarForUploadErrors('enter xp'));
                } else {
                  Map<String, String> resultMap = {};
                  List<String> keyValuePairs = match.split(',');

                  for (String pair in keyValuePairs) {
                    List<String> keyValue = pair.trim().split(':');
                    String key = keyValue[0].trim();
                    String value = keyValue[1].trim();
                    resultMap[key] = value;
                  }

                  setState(() {
                    challange.add({
                      'diamonds': diamonds,
                      'difficulty': difficulty,
                      'match': resultMap,
                      'xp': xp,
                      'type': 5,
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
