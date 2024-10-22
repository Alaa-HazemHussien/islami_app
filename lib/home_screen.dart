import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/tabs/ahadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/setting_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(children: [
      Image.asset(
        provider.theme==ThemeMode.light?
        'assets/images/background.png':
        'assets/images/darkBackgroundd.png',
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle,style: Theme.of(context).textTheme.bodyLarge,),),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/quran.png')),
                label: 'quran',
                backgroundColor: Theme.of(context).colorScheme.primary),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'sebha',
                backgroundColor:Theme.of(context).colorScheme.primary),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'radio',
                backgroundColor: Theme.of(context).colorScheme.primary),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: 'ahadeth',
                backgroundColor: Theme.of(context).colorScheme.primary),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.settings,
                ),
                label: 'setting',
                backgroundColor: Theme.of(context).colorScheme.primary),
          ],
        ),
        body: tabs[index],
      ),
    ]);
  }

  List<Widget> tabs = [
    QuranTab(),
     SebhaTab(),
     RadioTab(),
     AhadethTab(),
     SettingTab()
  ];
}
