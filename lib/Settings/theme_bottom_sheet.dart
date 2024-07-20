import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:islamic_app/app_color.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
        decoration: BoxDecoration(
        color: provider.isDarkMode() ? AppColor.PrimarColorDark
        :AppColor.WhiteColor,),
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.06,
        vertical: MediaQuery.of(context).size.height * 0.06,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.06,
        vertical: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
              onTap: (){
                provider.changeTheme(ThemeMode.dark);
              },
              child: provider.isDarkMode() ?
              getSelectedItemWidget(AppLocalizations.of(context)!.dark_mode) :
              getUnselectedItemWidget(AppLocalizations.of(context)!.dark_mode)
          ),
          GestureDetector(

              onTap: (){
                provider.changeTheme(ThemeMode.light);
              },
              child: provider.isDarkMode() ?
              getUnselectedItemWidget(AppLocalizations.of(context)!.light_mode) :
              getSelectedItemWidget(AppLocalizations.of(context)!.light_mode)
          )
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text){
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColor.PrimarColor
            ),
          ),
          Icon(Icons.check,
            color: AppColor.PrimarColor,
            size: 35,),
        ]
    );
  }

  Widget getUnselectedItemWidget(String text){
    return Text(text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(

        )
    );
  }
}
