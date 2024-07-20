import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Quran/item_sura.dart';
import 'package:islamic_app/app_color.dart';
import 'package:provider/provider.dart';

import '../Providers/app_config_provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    ;
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
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: provider.isDarkMode() ? AppColor.SacndryColorDark
                      :AppColor.PrimarColor,
                ),
              )
            : Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06,
                  vertical: MediaQuery.of(context).size.height * 0.06,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.06,
                  vertical: MediaQuery.of(context).size.height * 0.06,
                ),
                decoration: BoxDecoration(
                  color: provider.isDarkMode() ? AppColor.PrimarColorDark
                      :AppColor.WhiteColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemSura(
                      content: verses[index],
                      index: index,
                    );
                  },
                  itemCount: verses.length,
                ),
              ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    for (int i = 0; i < lines.length; i++) {
      print(lines[i]);
    }
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;
  SuraDetailsArgs({required this.name, required this.index});
}
