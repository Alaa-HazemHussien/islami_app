import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  static const String routeName = "radio";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          centerTitle: true,
          title: const Text('Radio'),
        ),
        Expanded(
          child: Image.asset(
            'assets/images/radio_image.png',
          ),),
        Expanded(child: Column(
          children: [
            Text('اذاعه القران الكريم',style: TextStyle(fontSize: 25),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_ios),
                Icon(Icons.play_arrow_sharp),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            )
          ],
        )
            )]
    ,
    );
  }
}
