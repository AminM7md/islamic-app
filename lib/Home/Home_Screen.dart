import 'package:flutter/material.dart';
import 'package:islamic_app/Hadeth/hadeth_tap.dart';
import 'package:islamic_app/Quran/quran_tap.dart';
import 'package:islamic_app/Radio/radio_tap.dart';
import 'package:islamic_app/Sebha/sebha_tap.dart';
import 'package:islamic_app/app_color.dart';

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
    return Stack(children: [
      Image.asset(
        'assets/images/backgraund.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            'Islami',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppColor.PrimarColor,
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png')),
                label: 'Quran',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/quran-quran-svgrepo-com.png')),
                label: 'Hadeth',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                label: 'Sebha',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio',
              ),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    ]);
  }

  List<Widget> tabs = [QuranTap(), HadethTap(), SebhaTap(), RadioTap()];
}
