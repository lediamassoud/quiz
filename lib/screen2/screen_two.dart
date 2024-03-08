import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/screen2/dot.dart';
import 'package:quiz/screen2/row_information.dart';
import 'package:quiz/screen2/tab_bar.dart';
import 'package:quiz/utilities/app_theme.dart';
import 'package:quiz/utilities/images_path.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    int newIndex = 0;
    bool isVisible1 = false;
    bool isVisible2 = false;
    bool isVisible3 = false;
    bool isVisible4 = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.whiteColor,
        elevation: 0,
        title: Row(
          children: [
            const Image(
              image: AssetImage(ImagesPath.personalImage),
            ),
            Column(
              children: [
                const Text(
                  "Hello, Jade",
                  style: AppTheme.textTextStyle,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text("Ready to workout?", style: AppTheme.titleTextStyle),
              ],
            ),
            const Spacer(),
            const Image(image: AssetImage(ImagesPath.bell)),
          ],
        ),
      ),
      body: Container(
        color: AppTheme.whiteColor,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.017,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RowInformation(
                      icon: CupertinoIcons.heart,
                      text1: "Heart Rate",
                      text2: "81",
                      text3: "BPM"),
                  const Divider(
                    thickness: 1,
                    color: AppTheme.gray,
                  ),
                  RowInformation(
                      icon: Icons.list,
                      text1: "To-do",
                      text2: "32,5",
                      text3: "%"),
                  const Divider(
                    thickness: 1,
                    color: AppTheme.gray,
                  ),
                  RowInformation(
                      icon: Icons.local_fire_department_outlined,
                      text1: "Calo",
                      text2: "1000",
                      text3: "cal"),
                ],
              ),
            ),

            const Expanded(
              child: MyTabBar(),
            ),

            BottomNavigationBar(
                currentIndex: newIndex,
                onTap: (index) {
                  newIndex = index;
                  setState(() {
                    if(index==0){
                      isVisible1 = true;
                    }else if(index==1){
                      isVisible2 = true;
                    }else if(index==2){
                      isVisible3 = true;
                    }else if(index==3){
                      isVisible4 = true;
                    }
                  });

                },
                items:  [
                  BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          const Icon(
                            Icons.home_filled,
                            color: AppTheme.darkGray,
                          ),
                          Visibility(
                            visible:isVisible1 ,
                              child: const Dot()),
                        ],
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          const Icon(Icons.navigation_outlined, color: AppTheme.semieGray),
                          Visibility(
                              visible:isVisible2 ,
                              child: const Dot()),
                        ],
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          const Icon(Icons.stacked_bar_chart,
                              color: AppTheme.semieGray),
                          Visibility(
                              visible:isVisible3 ,
                              child: const Dot()),
                        ],
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          const Icon(Icons.person_2_outlined,
                              color: AppTheme.semieGray),
                          Visibility(
                              visible:isVisible4 ,
                              child: const Dot()),
                        ],
                      ),
                      label: ""),
                ])
          ],
        ),
      ),
    );
  }
}
