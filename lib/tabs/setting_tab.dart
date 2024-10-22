import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
import '../bottom_sheets/show_language_bottom_sheet.dart';
import '../bottom_sheets/show_mode_bottom_sheet.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 45, right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,

            style: Theme.of(context).textTheme.bodyMedium,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(pro.local=='en'?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    color: MyThemeData.primary,
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: MyThemeData.primary),
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          InkWell(
            onTap: () {
              showModeBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(pro.theme==ThemeMode.light?AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    color: MyThemeData.primary,
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: MyThemeData.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: MyThemeData.primary,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }

  void showModeBottomSheet() {
    showModalBottomSheet(
      backgroundColor: MyThemeData.primary,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      context: context,
      builder: (context) {
        return ModeBottomSheet();
      },
    );
  }
}
