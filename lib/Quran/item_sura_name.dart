import 'package:flutter/material.dart';
import 'package:islamic_app/Quran/sura_details.dart';

class ItemSuraName extends StatefulWidget {
  String name;
  int index;
  ItemSuraName({required this.name, required this.index});

  @override
  State<ItemSuraName> createState() => _ItemSuraNameState();
}

class _ItemSuraNameState extends State<ItemSuraName> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetails.routeName,
            arguments: SuraDetailsArgs(name: widget.name, index: widget.index));
      },
      child: Text(
        widget.name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
