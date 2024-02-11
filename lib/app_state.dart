import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _token1 = '';
  String get token1 => _token1;
  set token1(String value) {
    _token1 = value;
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
  }
}
