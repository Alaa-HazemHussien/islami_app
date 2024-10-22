import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{

  String local='en';
  ThemeMode theme=ThemeMode.light;
  changeMode(ThemeMode mode){
theme=mode;
notifyListeners();
  }
  chaneLanguage(String langCode){
    local=langCode;
    notifyListeners();
  }
}