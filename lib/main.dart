import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/sura_detials.dart';

import 'hadeth_detials.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.@override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  MyThemeData.lightTheme,
      darkTheme:  MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {HomeScreen.routeName: (context) =>   HomeScreen(),
        SuraDetials.routeName: (context) =>   SuraDetials(),
        HadethDetials.routeName: (context) =>   HadethDetials()},
    );
  }
}
