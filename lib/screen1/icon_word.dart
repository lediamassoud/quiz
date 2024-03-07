import 'package:flutter/material.dart';
import 'package:quiz/utilities/images_path.dart';

import '../utilities/app_theme.dart';

class IconWord extends StatelessWidget {
  String iconPath;
  String word;
  Color backgroundColor;
  IconWord(
      {super.key,
      required this.iconPath,
      required this.word,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Row(
        children: [
          Image(image: AssetImage(iconPath)),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Text(word, style: AppTheme.descriptionTextStyle)
        ],
      ),
    );
  }
}
