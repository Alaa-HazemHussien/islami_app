import 'package:flutter/material.dart';
import 'package:islami_app/tabs/view/home_screen.dart';
import 'package:islami_app/utils/my_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/providers/sura_details_provider.dart';
import 'package:islami_app/tabs/view/sura_detials.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'tabs/view/hadeth_detials.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
       MultiProvider(
           providers: [
             ChangeNotifierProvider(create: (context) => MyProvider(),),
             // ChangeNotifierProvider(create: (context) => SuraDetialsProvider(),)
           ],
           child: MyApp()));
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }
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
        SuraDetials.routeName: (context) =>   const SuraDetials(),
        HadethDetials.routeName: (context) =>   HadethDetials()},
    );
  }
}
