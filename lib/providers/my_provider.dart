import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{
  String local='en';
  chaneLanguage(String langCode){
    local=langCode;
    notifyListeners();
  }
}