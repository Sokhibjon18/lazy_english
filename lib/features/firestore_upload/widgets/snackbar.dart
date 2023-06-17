// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

SnackBar snackbarForUploadErrors(String snackbarText) {
  final snackbar = SnackBar(
    content: Text(snackbarText),
    duration: const Duration(seconds: 3),
    elevation: 6.0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.blueGrey[800],
  );
  return snackbar;
}
