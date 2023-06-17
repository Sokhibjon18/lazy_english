import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lazy_english/features/firestore_upload/widgets/type_1.dart';

import '../widgets/type_2.dart';
import '../widgets/type_3.dart';
import '../widgets/type_4.dart';
import '../widgets/type_5.dart';

class FirestoreUploadPage extends StatefulWidget {
  const FirestoreUploadPage({super.key});

  @override
  State<FirestoreUploadPage> createState() => _FirestoreUploadPageState();
}

class _FirestoreUploadPageState extends State<FirestoreUploadPage> {
  CollectionReference challanges =
      FirebaseFirestore.instance.collection('challenge');

  String? _selectedOption;
  List<String> challangeTypes = ['1', '2', '3', '4', '5'];
  final CarouselController _carouselController = CarouselController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF543ACC),
        leading: BackButton(onPressed: () {
          _carouselController.previousPage();
        }),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: DropdownButton(
                value: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
                items: challangeTypes
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text('    type: $value'),
                  );
                }).toList(),
                hint: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Select type'),
                ),
                dropdownColor: Colors.white,
                borderRadius: BorderRadius.circular(16),
                underline: Container(color: Colors.white),
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(child: typeSwitcher(_selectedOption)),
    );
  }

  Widget typeSwitcher(String? type) {
    switch (type) {
      case '1':
        return const Type1Screen();
      case '2':
        return const Type2Screen();
      case '3':
        return const Type3Screen();
      case '4':
        return const Type4Screen();
      case '5':
        return const Type5Screen();
      default:
    }
    return Container();
  }
}
