import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/utils/my_theme_data.dart';
import 'package:islami_app/providers/sura_details_provider.dart';
import 'package:islami_app/tabs/models/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetials extends StatefulWidget {
  static const String routeName = "Sura Detials";

  const SuraDetials({super.key});

  @override
  State<SuraDetials> createState() => _SuraDetialsState();
}

class _SuraDetialsState extends State<SuraDetials> {


  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    // if (provider.verse.isEmpty) {
    //   provider.loadFile(args.index);
    // }

    return ChangeNotifierProvider(
        // el.. bt5aleny a3ml access 3la kol 7aga gwa elly ablha
        create: (context) => SuraDetialsProvider()..loadFile(args.index),
      builder:(context, child) {
        var provider =Provider.of<SuraDetialsProvider>(context);
       return Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill)),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                args.name,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
            body: Card(
              color: Colors.transparent,
              elevation: 0,
              margin: const EdgeInsets.only(top: 100, right: 18, left: 18),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: MyThemeData.primary)),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Text(
                      textDirection: TextDirection.rtl,
                      "${provider.verse[index]}(${index+1})",
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(
                    endIndent: 50,
                    indent: 50,
                    thickness: 1,
                    color: MyThemeData.primary,
                  ),
                  itemCount: provider.verse.length),
            ),
          ),
        ) ;
      }

    );
  }


}
