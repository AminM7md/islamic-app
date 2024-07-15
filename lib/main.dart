import 'package:flutter/material.dart';
import 'package:islamic_app/Hadeth/hadeth_details.dart';
import 'package:islamic_app/Home/Home_Screen.dart';
import 'package:islamic_app/Quran/sura_details.dart';
import 'package:islamic_app/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      theme: MyThemeData.lightMode,
    );
  }
}
