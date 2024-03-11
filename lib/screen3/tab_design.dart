import 'package:flutter/material.dart';
import 'package:quiz/utilities/app_theme.dart';

class TabDesign extends StatelessWidget {
  String word;
   TabDesign({super.key,required this.word});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(MediaQuery.of(context).size.width * 0.015),
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.015),
      decoration: BoxDecoration(
        color: AppTheme.whiteColor,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(color: AppTheme.semieGray)
      ),
      child: Text( word,
        style: const TextStyle(
          color: AppTheme.mauve,
          fontSize: 20
        ),

      ),
    );
  }
}
