import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:islamic_app/Settings/language_bottom_sheet.dart';
import 'package:islamic_app/Settings/theme_bottom_sheet.dart';
import 'package:islamic_app/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.06,
        vertical: MediaQuery.of(context).size.height * 0.06,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.06,
        vertical: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: provider.isDarkMode() ? AppColor.WhiteColor
                  :AppColor.blackColor,),
            ),
          ),
          GestureDetector(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
                vertical: MediaQuery.of(context).size.height * 0.01,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:  provider.isDarkMode() ? AppColor.SacndryColorDark
                    :AppColor.PrimarColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appLanguage == 'en'
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: provider.isDarkMode() ? AppColor.PrimarColorDark
                        :AppColor.WhiteColor,),
                  ),
                  Icon(Icons.arrow_drop_up),
                ],
              ),
            ),
          ),
          Container(
            child: Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: provider.isDarkMode() ? AppColor.WhiteColor
        :AppColor.blackColor,
            ),
          ),
          ),
          GestureDetector(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.02,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
                vertical: MediaQuery.of(context).size.height * 0.01,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: provider.isDarkMode() ? AppColor.SacndryColorDark
                    :AppColor.PrimarColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.isDarkMode()
                        ? AppLocalizations.of(context)!.dark_mode
                        : AppLocalizations.of(context)!.light_mode,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: provider.isDarkMode() ? AppColor.PrimarColorDark
                        :AppColor.WhiteColor,),
                  ),
                  Icon(Icons.arrow_drop_up),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }
}
