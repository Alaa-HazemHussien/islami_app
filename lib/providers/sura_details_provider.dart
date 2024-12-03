import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SuraDetialsProvider extends ChangeNotifier{
  List<String> verse = [];

  loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    print(lines);
    verse = lines;
    notifyListeners();
  }
}