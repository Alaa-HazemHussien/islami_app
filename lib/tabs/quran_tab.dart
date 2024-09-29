import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/sura_detials.dart';
import 'package:islami_app/sura_model.dart';

class QuranTab extends StatelessWidget {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Image.asset(
          'assets/images/quran_image.png',
        ),
      ),
      const Divider(
        color: MyThemeData.primary,
        endIndent: 30,
        indent: 30,
      ),
      Text(
        'Sura Name',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      const Divider(
        color: MyThemeData.primary,
        endIndent: 30,
        indent: 30,
      ),
      Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Center(
                  heightFactor: 1.5,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SuraDetials.routeName,
                          arguments: SuraModel(suraNames[index], index));
                    },
                    child: Text(
                      suraNames[index],
                      style: GoogleFonts.gulzar(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ));
            },
            separatorBuilder: (context, index) => const Divider(
                  color: MyThemeData.primary,
                  endIndent: 40,
                  indent: 40,
                ),
            itemCount: suraNames.length),
      )
    ]);
  }
}
