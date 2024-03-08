import 'package:flutter/material.dart';
import 'package:quiz/utilities/app_theme.dart';

class Dot extends StatelessWidget {
  const Dot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 7,
      height: 7,
      decoration: const BoxDecoration(
        color: AppTheme.darkGray,
        shape: BoxShape.circle,
      ),
    );
  }
}
