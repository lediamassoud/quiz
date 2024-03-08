import 'package:flutter/material.dart';
import 'package:quiz/screen2/part_one_from_tab_one.dart';
import 'package:quiz/utilities/images_path.dart';

class TabOne extends StatelessWidget {
  const TabOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PartOneFromTabOne(text1: "7 days", text2: "Morning Yoga", text3: "Improve mental focus.", imagePath: ImagesPath.exerciseOne),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
        PartOneFromTabOne(text1: "3 days", text2: "Plank Exercise", text3: "Improve posture and stability.", imagePath: ImagesPath.exerciseTwo)
      ],
    );
  }
}
