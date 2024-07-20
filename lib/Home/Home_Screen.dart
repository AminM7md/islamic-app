import 'package:flutter/material.dart';
import 'package:islamic_app/Hadeth/hadeth_tap.dart';
import 'package:islamic_app/Providers/app_config_provider.dart';
import 'package:islamic_app/Quran/quran_tap.dart';
import 'package:islamic_app/Radio/radio_tap.dart';
import 'package:islamic_app/Sebha/sebha_tap.dart';
import 'package:islamic_app/Settings/settings.dart';
import 'package:islamic_app/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(children: [
      provider.isDarkMode() ?
      Image.asset(
        'assets/images/bg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ) : Image.asset(
        'assets/images/backgraund.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: provider.isDarkMode() ?
                AppColor.PrimarColorDark
                :AppColor.PrimarColor,
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png'),size: 40),
                label: AppLocalizations.of(context)!.quran,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/quran-quran-svgrepo-com.png'),size: 40,),
                label: AppLocalizations.of(context)!.hadeth,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha_icon.png'),size: 40),
                label: AppLocalizations.of(context)!.sebha,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png'),size: 40),
                label: AppLocalizations.of(context)!.radio,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings,size: 40,
                ),
                label: AppLocalizations.of(context)!.setting,
              ),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    ]);
  }

  List<Widget> tabs = [QuranTap(), HadethTap(), SebhaTap(), RadioTap() , SettingsTab()];
}
