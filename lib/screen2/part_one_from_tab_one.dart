import 'package:flutter/material.dart';

import '../utilities/app_theme.dart';

class PartOneFromTabOne extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String imagePath;
   PartOneFromTabOne({super.key, required this.text1, required this.text2, required this.text3, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.gray,
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02,),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //text
                Container(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01,),
                  margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01,),
                  height: MediaQuery.of(context).size.height * 0.04,
                  //width: MediaQuery.of(context).size.width * 0.000001,
                  decoration: BoxDecoration(
                    color: AppTheme.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(text1, style: AppTheme.descriptionTextStyle,),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                 Text(text2, style: AppTheme.titleTextStyle),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                 Text(text3, style: AppTheme.descriptionTextStyle),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                Row(
                  children: [
                    Icon(Icons.watch_later_outlined),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                    Text("30 mins", style: AppTheme.descriptionTextStyle),
                  ],
                )
              ],
            ),
          ),
          Expanded(child: Image(image: AssetImage(imagePath))),
        ],
      ),
    );
  }
}
