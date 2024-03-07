import 'package:flutter/material.dart';
import 'package:quiz/utilities/app_theme.dart';
import 'package:quiz/utilities/images_path.dart';

class FeaturePage extends StatelessWidget {
  const FeaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      color: AppTheme.lightGreenColor,
      child:  Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("Positive vibes", style: AppTheme.textTextStyle,),
                const Text("Boost your mood with positive vibes",style: AppTheme.descriptionTextStyle,),
                Row(
                  children: [
                     SizedBox(child: Image(image: AssetImage(ImagesPath.playButton),)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text("10 mins", style: AppTheme.nameTextStyle.copyWith(fontSize: 15),)
                  ],
                ),
              ],
            ),
          ),
          Expanded(child: const Image(image: AssetImage(ImagesPath.walkingTheDog)))
        ],
      ),
    );
  }
}
