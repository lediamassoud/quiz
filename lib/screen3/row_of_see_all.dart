import 'package:flutter/material.dart';

import '../utilities/app_theme.dart';

class RowOfSeeAll extends StatelessWidget {
  String word;
  RowOfSeeAll({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(word, style: AppTheme.titleTextStyle,),
        const Spacer(),
        const Text("see all", style: AppTheme.seeMoreTextStyle,),
        const Icon(Icons.arrow_forward_ios ,size: 20,color: AppTheme.mauve,),
      ],
    );
  }
}
