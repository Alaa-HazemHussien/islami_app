import 'package:flutter/material.dart';
import 'package:islami_app/utils/my_theme_data.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = "seb7a Detials";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int index = 0;

  List<String> sebhaText = ['الله اكبر', 'الحمدلله', 'سبحان الله'];

  int counter = 0;
  double turn=0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppBar(
        centerTitle: true,
        title: Text(
          'sebha',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),

      Align(
        alignment: Alignment.center,
        child: Stack(
          clipBehavior: Clip.none,
          children: [

             Padding(
               padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.19),
               child: Image.asset(
                  'assets/images/head_of_seb7a.png',
                ),
             ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .077),
              child: AnimatedRotation(
                duration: const Duration(milliseconds: 500),
                turns: turn,
                child: GestureDetector(
                  onTap:counterMethod() ,
                  child: Image.asset(
                    'assets/images/body_of_seb7a.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 40,),
      Expanded(
        child: Column(children: [
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: MyThemeData.primary),
              onPressed: () {

              },
              child: Text(
                counter.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          const SizedBox(height: 20),
          ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: MyThemeData.primary),
              onPressed: () { counterMethod;
                setState(() {

                });},
              child: Text(
                sebhaText[index],
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )),
        ]),

      )
    ]);
  }

  counterMethod() {
    setState(() {
      if (counter == 33) {
        counter = 0;
        turn+=0.03;

        if (index < sebhaText.length - 1) {
          index++;
        } else {
          index = 0;
        }
      } else {
        counter++;
        turn+=0.03;
      }
    });


  }
}
