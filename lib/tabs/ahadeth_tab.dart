import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth_detials.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/ahadeth_model.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}
class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadAhadeth();
    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/images/ahadeth_image.png',
          ),
        ),
        Divider(
          thickness: 1,
          color: MyThemeData.primary,
          endIndent: 40,
          indent: 40,
        ),
        Text('Ahadeth'),
        Divider(
          thickness: 1,
          color: MyThemeData.primary,
          endIndent: 40,
          indent: 40,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(child: Text(allAhadeth[index].title,textAlign: TextAlign.center,),
                onTap:(){Navigator.pushNamed(context, HadethDetials.routeName,
                    arguments: allAhadeth[index]);} ,);
              },
              separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    color: MyThemeData.primary,
                    endIndent: 40,
                    indent: 40,
                  ),
              itemCount: allAhadeth.length),
        )
      ],
    );
  }

  loadAhadeth() async {
    rootBundle.loadString('assets/files/ahadeth.txt').then((ahadeth) {
      List<String> ahadethList = ahadeth.trim().split("#");
      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLines = hadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.remove(0);
        List<String> content = hadethOneLines;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        print(title);
      }
      setState(() {

      });
    }).catchError((e) => print(e.toString()));
  }
}
