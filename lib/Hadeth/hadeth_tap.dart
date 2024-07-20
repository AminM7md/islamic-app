import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Hadeth/item_hadeth_name.dart';
import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import '../app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadethList = [] ;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    loadHadethFile();

    return Column(
      children: [
        Image.asset('assets/images/ahadeth_image.png'),
        Divider(
          color: provider.isDarkMode() ?
          AppColor.SacndryColorDark
              :AppColor.PrimarColor,
          thickness: 3,
        ),
        Text(AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          color: provider.isDarkMode() ?
          AppColor.SacndryColorDark
              :AppColor.PrimarColor,
          thickness: 3,
        ),
        Expanded(
          child: ahadethList.isEmpty ?
            Center(child: CircularProgressIndicator(
              color: provider.isDarkMode() ?
              AppColor.SacndryColorDark
                  :AppColor.PrimarColor,
            )
              ,)
              :
          ListView.separated(
            separatorBuilder: (context,index){
              return Divider(
                color: provider.isDarkMode() ?
                AppColor.SacndryColorDark
                    :AppColor.PrimarColor,
                thickness: 2,
              );
            },
            itemBuilder: (context,index){
              return ItemHadethName(hadeth : ahadethList[index]);
            },
            itemCount: ahadethList.length,

          ),


        ),


      ],

    );
  }

  void loadHadethFile()async{
  String hadethContent = await rootBundle.loadString('assets/files/ahadeth.txt');
  List<String> hadethList = hadethContent.split('#\r\n');
  for(int i = 0 ; i < hadethList.length ; i++){
   List<String> hadethLines = hadethList[i].split('\n');
   String title = hadethLines[0] ;
   hadethLines.removeAt(0);
Hadeth hadeth = Hadeth(title: title, content: hadethLines);
ahadethList.add(hadeth);
setState(() {

});
    }
  }
}


class Hadeth {
  String title ;
  List<String> content = [] ;
  Hadeth ({required this.title , required this.content});
}