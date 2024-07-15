import 'package:flutter/material.dart';

class ItemSura extends StatefulWidget {
String content ;
int index ;
ItemSura ({required this.content , required this.index});

  @override
  State<ItemSura> createState() => _ItemSuraState();
}

class _ItemSuraState extends State<ItemSura> {
  @override
  Widget build(BuildContext context) {
    return Text('${widget.content} (${widget.index+1})' ,
    style: Theme.of(context).textTheme.titleLarge,
    textDirection: TextDirection.rtl,
    );
  }
}
