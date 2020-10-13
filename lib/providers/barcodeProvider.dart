import 'package:flutter/material.dart';

class BarcodeModel with ChangeNotifier {
  String _stream = "";

  //  getter for textFromScanner
  String get stream => _stream;

  // function to getTextFromScanner
  void getTextFromScanner(String scannerText) {
    _stream = scannerText;
    notifyListeners();
  }
}
