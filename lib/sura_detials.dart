import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/sura_model.dart';

class SuraDetials extends StatefulWidget {
  static const String routeName = "Sura Detials";

  const SuraDetials({super.key});

  @override
  State<SuraDetials> createState() => _SuraDetialsState();
}

class _SuraDetialsState extends State<SuraDetials> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verse.isEmpty) {
      loadFile(args.index);
    }

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
          margin: EdgeInsets.only(top: 100, right: 18, left: 18),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: MyThemeData.primary)),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  textDirection: TextDirection.rtl,
                 "${verse[index]}(${index+1})",
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                );
              },
              separatorBuilder: (context, index) => Divider(
                    endIndent: 50,
                    indent: 50,
                    thickness: 1,color: MyThemeData.primary,
                  ),
              itemCount: verse.length),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    print(lines);
    verse = lines;
    setState(() {});
  }
}
