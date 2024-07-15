import 'package:flutter/material.dart';
import 'package:islamic_app/app_color.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.only(
            left: 0,
            top: MediaQuery.of(context).size.height * 0.16,
            right: 0.0,
            bottom: 0.0),
        child: Image.asset(
          'assets/images/radio_image.png',
        ),
      ),
      Container(
        margin: EdgeInsets.only(
            left: 0,
            top: MediaQuery.of(context).size.height * 0.06,
            right: 0.0,
            bottom: 0.0),
        child: Text(
          'ازاعة القران الكريم',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(
                  left: 0,
                  top: MediaQuery.of(context).size.height * 0.06,
                  right: 0.0,
                  bottom: 0.0),
              child: MaterialButton(
                onPressed: () {},
                child: ImageIcon(
                    color: AppColor.PrimarColor,
                    AssetImage('assets/images/Icon metro-next.png')),
              )),
          Container(
              margin: EdgeInsets.only(
                  left: 0,
                  top: MediaQuery.of(context).size.height * 0.06,
                  right: 0.0,
                  bottom: 0.0),
              child: MaterialButton(
                onPressed: () {},
                child: ImageIcon(
                    color: AppColor.PrimarColor,
                    AssetImage('assets/images/Icon awesome-play.png')),
              )),
          Container(
              margin: EdgeInsets.only(
                  left: 0,
                  top: MediaQuery.of(context).size.height * 0.06,
                  right: 0.0,
                  bottom: 0.0),
              child: MaterialButton(
                onPressed: () {},
                child: ImageIcon(
                    color: AppColor.PrimarColor,
                    AssetImage('assets/images/Icon metro-next-l.png')),
              )),
        ],
      ),
    ]);
  }
}
