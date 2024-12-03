import 'package:flutter/material.dart';
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
                 provider.theme==ThemeMode.light?const Icon(
                    Icons.done,
                    color:Colors.white ,
                  ):const SizedBox.shrink(),
                ]),
          ),
          const SizedBox(
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
                  provider.theme==ThemeMode.dark ?const Icon(
                    Icons.done,
                    color:Colors.white ,
                  ):const SizedBox.shrink(),
                ]),
          )
        ],
      ),
    );
  }
}
