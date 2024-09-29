import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';

class SebhaTab extends StatelessWidget {
  static const String routeName = "seb7a Detials";

  String sebhaText = 'سبحان الله';
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppBar(
        centerTitle: true,
        title:  Text('Radio',style:  Theme.of(context).textTheme.bodyLarge,),
      ),

      Image.asset('assets/images/head_of_seb7a.png',),
      Image.asset(
        'assets/images/body_of_seb7a.png',
      ),
      Expanded(
          child: Column(children: [
        Text(
          'عدد التسبيحات',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          height: 20,
        ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: MyThemeData.primary),
                onPressed: () {},
                child: Text(
                  counter.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
        SizedBox(height: 20),
        ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: MyThemeData.primary),
            onPressed: () {},
            child: Text(
              sebhaText,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),

      ]))
    ]);
  }
}
