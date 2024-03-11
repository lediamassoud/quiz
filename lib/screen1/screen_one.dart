import 'package:flutter/material.dart';
import 'package:quiz/screen1/feature_page.dart';
import 'package:quiz/screen1/feeling_icon.dart';
import 'package:quiz/screen1/icon_word.dart';
import 'package:quiz/screen1/row_of_two_words.dart';
import 'package:quiz/utilities/images_path.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utilities/app_theme.dart';

class ScreenOne extends StatelessWidget {
  final controller = PageController();
  ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.whiteColor,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage(ImagesPath.logoImage)),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        color: AppTheme.whiteColor,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Row(
                  children: [
                    Text(
                      "Hello, ",
                      style: AppTheme.titleTextStyle,
                    ),
                    Text("Sara Rose", style: AppTheme.nameTextStyle)
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),

                const Text(
                  "How are you feeling today?",
                  style: AppTheme.descriptionTextStyle,
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),

                Row(
                  children: [
                    Expanded(
                        child: FeelingIcon(
                      imagePath: ImagesPath.love,
                      title: "love",
                    )),
                    Expanded(
                        child: FeelingIcon(
                      imagePath: ImagesPath.cool,
                      title: "cool",
                    )),
                    Expanded(
                        child: FeelingIcon(
                      imagePath: ImagesPath.happy,
                      title: "happy",
                    )),
                    Expanded(
                        child: FeelingIcon(
                      imagePath: ImagesPath.sad,
                      title: "sad",
                    )),
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),

                RowOfTwoWords(word: "Feature"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                //indicator
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,

                  ///page View
                  child: PageView(
                    controller: controller,
                    children: [
                      const FeaturePage(),
                      Container(
                        color: AppTheme.greenColor,
                      ),
                      Container(
                        color: AppTheme.blackLight,
                      ),
                    ],
                  ),
                ),

                ///dots indicators
                SmoothPageIndicator(controller: controller, count: 3,
                effect: const JumpingDotEffect(
                  activeDotColor: AppTheme.greenColor,
                  dotColor: AppTheme.greenColor,
                  dotHeight: 30,
                  dotWidth: 30,
                  spacing: 16,
                  verticalOffset: 20,
                ),),


                RowOfTwoWords(word: "Exercise"),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconWord(
                            iconPath: ImagesPath.relaxation,
                            word: "Relaxation",
                            backgroundColor: AppTheme.lightMauve),
                        IconWord(
                          iconPath: ImagesPath.meditation,
                          word: "Meditation",
                          backgroundColor: AppTheme.lightPink,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconWord(
                            iconPath: ImagesPath.beathing,
                            word: "Beathing",
                            backgroundColor: AppTheme.lightMauve),
                        IconWord(
                          iconPath: ImagesPath.yoga,
                          word: "Yoga",
                          backgroundColor: AppTheme.lightPink,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            BottomNavigationBar(
                currentIndex: 1,
                onTap: (index) {},
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_filled,
                        color: AppTheme.greenColor,
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.grid_view, color: AppTheme.blackLight),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.calendar_today_outlined,
                          color: AppTheme.blackLight),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_2_outlined,
                          color: AppTheme.blackLight),
                      label: ""),
                ])
          ],
        ),
      ),
    );
  }
}
