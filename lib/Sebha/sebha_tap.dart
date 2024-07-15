
import 'package:flutter/material.dart';

import '../app_color.dart';

class SebhaTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

        children: [
          Container(
            child: Column(
              children: [
                Image.asset('assets/images/head_of_seb7a.png',
                ),
                 Image.asset('assets/images/body_of_seb7a.png',
                   ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left : 0 , top: MediaQuery.of(context).size.height*0.06 , right: 0.0 , bottom : 0.0 ),
            child: Text('عدد التسبيحات',
              style: Theme.of(context).textTheme.bodyLarge ,
            ),
          ),

          Expanded(
            child: ListView.separated(
              separatorBuilder: (context,index){
                return Divider(
                  color: AppColor.PrimarColor,
                  thickness: 2,
                );
              },
              itemBuilder: (context,index){
                return Text('');
              },
              itemCount: 0 ,

            ),


          ),


        ],
    );
  }
}
