import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/providers/sura_details_provider.dart';
import 'package:islami_app/sura_detials.dart';
import 'package:provider/provider.dart';

import 'hadeth_detials.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(
       MultiProvider(
           providers: [
             ChangeNotifierProvider(create: (context) => MyProvider(),),
             // ChangeNotifierProvider(create: (context) => SuraDetialsProvider(),)
           ],
           child: MyApp()));
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.@override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.local),
      // localizationsDelegates: [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale('en'), // English
      //   Locale('ar'), // Spanish
      // ],
themeMode: provider.theme,
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
