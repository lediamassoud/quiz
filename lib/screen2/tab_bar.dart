import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/screen2/tab_one.dart';

import '../utilities/app_theme.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 4,
        child: Container(
          color: AppTheme.whiteColor,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: AppTheme.whiteColor,
              title:  Text("Workout Programs", style :AppTheme.titleTextStyle),
              bottom: const TabBar(
                dividerColor: AppTheme.gray,
                labelColor: AppTheme.greenColor,
                tabs: [
                  Tab(
                    child: Text("All Type",style: AppTheme.tabBarTitleTextStyle,),
                  ),
                  Tab(
                    child: Text("Full Body",style: AppTheme.tabBarTitleTextStyle,),
                  ),
                  Tab(
                    child: Text("Upper",style: AppTheme.tabBarTitleTextStyle,),
                  ),
                  Tab(
                    child: Text("Lower",style: AppTheme.tabBarTitleTextStyle,),
                  ),
                ],
              ),

            ),
            body: const TabBarView(
              children: [
                Center(
                  child: TabOne(),
                ),
                Center(
                  child: Text("It's my content here"),
                ),
                Center(
                  child: Text("It's my content here"),
                ),
                Center(
                  child: Text("It's my content here"),
                ),
              ],
            ),
          ),
        ));
  }
}
