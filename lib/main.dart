import 'package:flutter/material.dart';
import 'package:islamic_app/Hadeth/hadeth_details.dart';
import 'package:islamic_app/Home/Home_Screen.dart';
import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:islamic_app/Quran/sura_details.dart';
import 'package:islamic_app/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppConfigProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      theme: MyThemeData.lightMode,
      themeMode: provider.appTheme,
      darkTheme: MyThemeData.DarkMode ,
      locale: Locale(
        provider.appLanguage
      ),
    );
  }
}
