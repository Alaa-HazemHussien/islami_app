import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/my_provider.dart';

class ModeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
provider.changeMode(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.light,
                    style: TextStyle(
                        color: provider.theme == ThemeMode.light
                            ? Colors.white
                            : Colors.black),
                  ),
                 provider.theme==ThemeMode.light?Icon(
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
              provider.changeMode(ThemeMode.dark);
              Navigator.pop(context);
            },
            child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.dark,
                    style: TextStyle(
                        color: provider.theme == ThemeMode.dark
                            ? Colors.white
                            : Colors.black),
                  ),
                  provider.theme==ThemeMode.dark ?Icon(
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
