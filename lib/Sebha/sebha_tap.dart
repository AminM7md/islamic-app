import 'package:flutter/material.dart';
import 'package:islamic_app/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../Providers/app_config_provider.dart';


class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  double angle = 0.0;
  int tasbehCounter = 0;
  int index = 0 ;
  List<String> tasbeh = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.09,
                ),
                child: Image.asset('assets/images/head_of_seb7a.png',color: provider.isDarkMode() ? AppColor.SacndryColorDark
                    :AppColor.PrimarColor,),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.080),
                child: GestureDetector(
                  onTap: () {
                    onTabSebha();
                    setState(() {
                    });
                  },
                  child: Transform.rotate(
                    angle: angle ,
                      child: Image.asset('assets/images/body_of_seb7a.png', color: provider.isDarkMode() ? AppColor.SacndryColorDark
                          :AppColor.PrimarColor,)
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06,
              vertical: MediaQuery.of(context).size.height * 0.06,
            ),
            child: Text(
              AppLocalizations.of(context)!.num_of_tasbeh,
              style: Theme.of(context).textTheme.bodyLarge,

            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06,
              vertical: MediaQuery.of(context).size.height * 0.03,
            ),
            decoration: BoxDecoration(
              color: provider.isDarkMode() ? AppColor.PrimarColorDark
                  :AppColor.PrimarColor,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Text('$tasbehCounter',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: provider.isDarkMode() ? AppColor.SacndryColorDark
                :AppColor.blackColor,),),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06,
              vertical: MediaQuery.of(context).size.height * 0.06,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06,
              vertical: MediaQuery.of(context).size.height * 0.01,
            ),
            decoration: BoxDecoration(
              color: provider.isDarkMode() ? AppColor.SacndryColorDark
                  :AppColor.PrimarColor,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Text(tasbeh[index],
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: provider.isDarkMode() ? AppColor.blackColor
                  :AppColor.blackColor,),),

          ),
        ],
      ),
    );
  }
  onTabSebha() {
    tasbehCounter++;
    angle+=4;
      if (tasbehCounter % 33 == 0) {
        index++;
      };
      if(index== tasbeh.length){
        index = 0 ;
      };
    }

}
