import 'package:flutter/material.dart';
import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:islamic_app/Quran/item_sura_name.dart';
import 'package:islamic_app/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


class QuranTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    List<String> names = [
      AppLocalizations.of(context)!.alFatihah,
      AppLocalizations.of(context)!.alBaqarah,
      AppLocalizations.of(context)!.aalEImran,
      AppLocalizations.of(context)!.anNisa,
      AppLocalizations.of(context)!.alMaidah,
      AppLocalizations.of(context)!.alAnam,
      AppLocalizations.of(context)!.alAraf,
      AppLocalizations.of(context)!.alAnfal,
      AppLocalizations.of(context)!.atTawbah,
      AppLocalizations.of(context)!.yunus,
      AppLocalizations.of(context)!.hud,
      AppLocalizations.of(context)!.yusuf,
      AppLocalizations.of(context)!.arRad,
      AppLocalizations.of(context)!.ibrahim,
      AppLocalizations.of(context)!.alHijr,
      AppLocalizations.of(context)!.anNahl,
      AppLocalizations.of(context)!.alIsra,
      AppLocalizations.of(context)!.alKahf,
      AppLocalizations.of(context)!.maryam,
      AppLocalizations.of(context)!.taha,
      AppLocalizations.of(context)!.alAnbiya,
      AppLocalizations.of(context)!.alHajj,
      AppLocalizations.of(context)!.alMuminun,
      AppLocalizations.of(context)!.anNur,
      AppLocalizations.of(context)!.alFurqan,
      AppLocalizations.of(context)!.ashShuara,
      AppLocalizations.of(context)!.anNaml,
      AppLocalizations.of(context)!.alQasas,
      AppLocalizations.of(context)!.alAnkabut,
      AppLocalizations.of(context)!.arRum,
      AppLocalizations.of(context)!.luqman,
      AppLocalizations.of(context)!.asSajda,
      AppLocalizations.of(context)!.alAhzab,
      AppLocalizations.of(context)!.saba,
      AppLocalizations.of(context)!.fatir,
      AppLocalizations.of(context)!.yaSin,
      AppLocalizations.of(context)!.asSaffat,
      AppLocalizations.of(context)!.sad,
      AppLocalizations.of(context)!.azZumar,
      AppLocalizations.of(context)!.ghafir,
      AppLocalizations.of(context)!.fussilat,
      AppLocalizations.of(context)!.ashShura,
      AppLocalizations.of(context)!.azZukhruf,
      AppLocalizations.of(context)!.adDukhan,
      AppLocalizations.of(context)!.alJathiya,
      AppLocalizations.of(context)!.alAhqaf,
      AppLocalizations.of(context)!.muhammad,
      AppLocalizations.of(context)!.alFath,
      AppLocalizations.of(context)!.alHujurat,
      AppLocalizations.of(context)!.qaf,
      AppLocalizations.of(context)!.adhDhariyat,
      AppLocalizations.of(context)!.atTur,
      AppLocalizations.of(context)!.anNajm,
      AppLocalizations.of(context)!.alQamar,
      AppLocalizations.of(context)!.arRahman,
      AppLocalizations.of(context)!.alWaqia,
      AppLocalizations.of(context)!.alHadid,
      AppLocalizations.of(context)!.alMujadila,
      AppLocalizations.of(context)!.alHashr,
      AppLocalizations.of(context)!.alMumtahina,
      AppLocalizations.of(context)!.asSaff,
      AppLocalizations.of(context)!.alJumua,
      AppLocalizations.of(context)!.alMunafiqun,
      AppLocalizations.of(context)!.atTaghabun,
      AppLocalizations.of(context)!.atTalaq,
      AppLocalizations.of(context)!.atTahrim,
      AppLocalizations.of(context)!.alMulk,
      AppLocalizations.of(context)!.alQalam,
      AppLocalizations.of(context)!.alHaaqqa,
      AppLocalizations.of(context)!.alMaarij,
      AppLocalizations.of(context)!.nuh,
      AppLocalizations.of(context)!.alJinn,
      AppLocalizations.of(context)!.alMuzzammil,
      AppLocalizations.of(context)!.alMuddathir,
      AppLocalizations.of(context)!.alQiyama,
      AppLocalizations.of(context)!.alInsan,
      AppLocalizations.of(context)!.alMursalat,
      AppLocalizations.of(context)!.anNaba,
      AppLocalizations.of(context)!.anNaziat,
      AppLocalizations.of(context)!.abasa,
      AppLocalizations.of(context)!.atTakwir,
      AppLocalizations.of(context)!.alInfitar,
      AppLocalizations.of(context)!.alMutaffifin,
      AppLocalizations.of(context)!.alInshiqaq,
      AppLocalizations.of(context)!.alBurooj,
      AppLocalizations.of(context)!.atTariq,
      AppLocalizations.of(context)!.alAla,
      AppLocalizations.of(context)!.alGhashiya,
      AppLocalizations.of(context)!.alFajr,
      AppLocalizations.of(context)!.alBalad,
      AppLocalizations.of(context)!.ashShams,
      AppLocalizations.of(context)!.alLail,
      AppLocalizations.of(context)!.adDuha,
      AppLocalizations.of(context)!.ashSharh,
      AppLocalizations.of(context)!.atTin,
      AppLocalizations.of(context)!.alAlaq,
      AppLocalizations.of(context)!.alQadr,
      AppLocalizations.of(context)!.alBayyina,
      AppLocalizations.of(context)!.azZalzala,
      AppLocalizations.of(context)!.alAdiyat,
      AppLocalizations.of(context)!.alQaria,
      AppLocalizations.of(context)!.atTakathur,
      AppLocalizations.of(context)!.alAsr,
      AppLocalizations.of(context)!.alHumaza,
      AppLocalizations.of(context)!.alFil,
      AppLocalizations.of(context)!.quraish,
      AppLocalizations.of(context)!.alMaun,
      AppLocalizations.of(context)!.alKawthar,
      AppLocalizations.of(context)!.alKafirun,
      AppLocalizations.of(context)!.anNasr,
      AppLocalizations.of(context)!.alMasad,
      AppLocalizations.of(context)!.alIkhlas,
      AppLocalizations.of(context)!.alFalaq,
      AppLocalizations.of(context)!.anNas,
    ];

    return Column(
      children: [
        Image.asset('assets/images/quran_image.png'),
        Divider(
          color: provider.isDarkMode() ?
          AppColor.SacndryColorDark
              :AppColor.PrimarColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.sura_name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          color: provider.isDarkMode() ?
          AppColor.SacndryColorDark
              :AppColor.PrimarColor,
          thickness: 3,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: provider.isDarkMode() ? AppColor.SacndryColorDark
                    :AppColor.PrimarColor,
                thickness: 2,
              );
            },
            itemBuilder: (context, index) {
              return ItemSuraName(
                name: names[index],
                index: index,
              );
            },
            itemCount: names.length,
          ),
        ),
      ],
    );
  }
}
