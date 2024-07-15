import 'package:flutter/material.dart';

class ItemHadeth extends StatelessWidget {
String content ;
ItemHadeth ({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(content,
    textAlign: TextAlign.center,
    style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
