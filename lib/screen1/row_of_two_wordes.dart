import 'package:flutter/material.dart';

import '../utilities/app_theme.dart';

class RowOfTwoWords extends StatelessWidget {
  String word;
   RowOfTwoWords({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(word, style: AppTheme.textTextStyle,),
        const Spacer(),
        const Text("see more", style: AppTheme.seeMoreTextStyle,),
        const Icon(Icons.arrow_drop_down, size: 25,color: AppTheme.greenColor,),
      ],
    );
  }
}
