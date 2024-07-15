import 'package:flutter/material.dart';
import 'package:islamic_app/Hadeth/hadeth_tap.dart';
import 'package:islamic_app/Hadeth/item_hadeth.dart';


class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)
        ?.settings
        .arguments as Hadeth;

    return Stack(children: [
      Image.asset(
        'assets/images/backgraund.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(args.title,
            style: Theme
                .of(context)
                .textTheme
                .bodyLarge,
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery
                .of(context)
                .size
                .width * 0.06,
            vertical: MediaQuery
                .of(context)
                .size
                .height * 0.06,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery
                .of(context)
                .size
                .width * 0.06,
            vertical: MediaQuery
                .of(context)
                .size
                .height * 0.06,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),

          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadeth(content: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),

      ),
    ]
    );
  }
}