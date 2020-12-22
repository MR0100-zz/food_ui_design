import 'package:flutter/material.dart';
import 'package:ui_design_1/widgets/feature_restorants.dart';
import 'package:ui_design_1/widgets/popular_items.dart';
import 'package:ui_design_1/widgets/search_area.dart';
import 'package:ui_design_1/widgets/story_section.dart';

class Page1 extends StatelessWidget {
  const Page1({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            StorySection(deviceSize: deviceSize),
            SearchArea(deviceSize: deviceSize),
            SizedBox(height: 20),
            FeaturedRestorants(deviceSize: deviceSize),
            PopularRestorants(deviceSize: deviceSize),
          ],
        ),
      ),
    );
  }
}
