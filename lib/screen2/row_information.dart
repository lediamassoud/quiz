import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../utilities/app_theme.dart';

class RowInformation extends StatelessWidget {
  //static const IconData heart_solid = IconData(0xf443, fontFamily: iconFont, fontPackage: iconFontPackage);
  IconData icon;
  String text1;
  String text2;
  String text3;

   RowInformation({super.key, required this.icon, required this.text1, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: AppTheme.lightGray,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(icon),
                  Text(text1,style: AppTheme.descriptionTextStyle.copyWith(fontSize: 15),)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
               Row(
                children: [
                  Text(text2,style: AppTheme.titleTextStyle.copyWith(fontSize: 18),),
                 const SizedBox(height: 10,),
                  Text(text3,style: AppTheme.descriptionTextStyle,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
