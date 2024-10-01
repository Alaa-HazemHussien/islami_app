import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'ahadeth_model.dart';

class HadethDetials extends StatefulWidget {
  static const String routeName = "Hadeth Detials";

  @override
  State<HadethDetials> createState() => _HadethDetialsState();
}

class _HadethDetialsState extends State<HadethDetials> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
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
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Text(
                    textDirection: TextDirection.rtl,
                    "${args.content[index]}",
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  endIndent: 50,
                  indent: 50,
                  thickness: 1,color: MyThemeData.primary,
                ),
                itemCount: args.content.length),
          ),
        ),
      ),
    );
  }


}
