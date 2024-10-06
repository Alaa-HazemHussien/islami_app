import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.chaneLanguage('en');
              Navigator.pop(context);
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.english,
                    style: TextStyle(
                        color: provider.local == 'en'
                            ? Colors.white
                            : Colors.black),
                  ),
                 provider.local=='en' ?Icon(
                    Icons.done,
                    color:Colors.white ,
                  ):SizedBox.shrink(),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              provider.chaneLanguage('ar');
              Navigator.pop(context);
            },
            child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.arabic,
                    style: TextStyle(
                        color: provider.local == 'ar'
                            ? Colors.white
                            : Colors.black),
                  ),
                  provider.local=='ar' ?Icon(
                    Icons.done,
                    color:Colors.white ,
                  ):SizedBox.shrink(),
                ]),
          )
        ],
      ),
    );
  }
}
