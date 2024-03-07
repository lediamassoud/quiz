import 'package:flutter/material.dart';

import '../utilities/app_theme.dart';

class FeelingIcon extends StatelessWidget {
  String imagePath;
  String title;
   FeelingIcon({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(imagePath)),
        Text(title, style: AppTheme.descriptionTextStyle,)
      ],
    );
  }
}
