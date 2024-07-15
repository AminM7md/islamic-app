import 'package:flutter/material.dart';
import 'package:islamic_app/Hadeth/hadeth_details.dart';
import 'hadeth_tap.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth ;
ItemHadethName({required this.hadeth });
  @override
  Widget build(BuildContext context) {
  return  InkWell(
    onTap: (){
      Navigator.of(context).pushNamed(HadethDetails.routeName,
      arguments: hadeth
      );
    },
    child: Text( hadeth.title ,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,
    ),
  );

  }
}
