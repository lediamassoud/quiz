import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/screen3/row_of_see_all.dart';
import 'package:quiz/screen3/tab_design.dart';
import 'package:quiz/utilities/app_theme.dart';
import 'package:quiz/utilities/images_path.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabList = [
      const Image(image: AssetImage(ImagesPath.frameOne)),
      const Image(image: AssetImage(ImagesPath.frameTwo)),
    ];
    return Scaffold(
      backgroundColor: AppTheme.gray,
      appBar: AppBar(
        backgroundColor: AppTheme.gray,
        elevation: 0,
        title: const Center(
            child: Image(image: AssetImage(ImagesPath.logoScreenThree))),
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.017,
            ),
            TextField(
                decoration: InputDecoration(
              fillColor: AppTheme.greenColor,
              prefixIcon: const Icon(Icons.search),
              hintStyle: const TextStyle(color: AppTheme.semieGray),
              hintText: "Articles, Video, Audio and more,...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                // gapPadding: MediaQuery.of(context).size.height * 0.02,
              ),
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TabDesign(
                    word: "Discover",
                  ),
                  TabDesign(
                    word: "News",
                  ),
                  TabDesign(
                    word: "Most Viewed",
                  ),
                  TabDesign(
                    word: "Saved",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Expanded
            RowOfSeeAll(word: "Hot topics"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CarouselSlider(items: tabList, options: CarouselOptions())
                  ],
                ),
              ),
            ),
            const Text(
              "Get Tips",
              style: AppTheme.titleTextStyle,
            ),

            Container(
              color: AppTheme.lightGray,
              padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
              // width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                children: [
                  const Image(image: AssetImage(ImagesPath.doctor)),
                  Column(
                    children: [
                      const Text(
                        "Connect with doctors & get suggestions",
                        style: AppTheme.titleTextStyle,
                        softWrap: true,
                      ),
                      const Text(
                        "Connect now and get expert insights",
                        style: AppTheme.descriptionTextStyle,
                      ),

                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.mauve,
                          ),
                          child: Text(
                            "View detail",
                            style: AppTheme.descriptionTextStyle
                                .copyWith(color: AppTheme.whiteColor),
                          ))
                    ],
                  ),
                ],
              ),
            ),

            RowOfSeeAll(word: "Cycle Phases and Period"),

            BottomNavigationBar(
                currentIndex: 2,
                onTap: (index) {},
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.calendar_today_outlined,
                        color: AppTheme.semieGray,
                      ),
                      label: "Today"),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.square_grid_2x2,
                          color: AppTheme.mauve),
                      label: "Insights"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.calendar_today_outlined,
                          color: AppTheme.semieGray),
                      label: "chat"),
                ])
          ],
        ),
      ),
    );
  }
}
