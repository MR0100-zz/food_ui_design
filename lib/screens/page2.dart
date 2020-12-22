import 'package:flutter/material.dart';
import 'package:ui_design_1/widgets/feature_restorants.dart';
import 'package:ui_design_1/widgets/page_card.dart';
import 'package:ui_design_1/widgets/popular_items.dart';
import 'package:ui_design_1/widgets/search_area.dart';
import 'package:ui_design_1/widgets/story_section.dart';

class Page2 extends StatelessWidget {
  const Page2({
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
            // StorySection(deviceSize: deviceSize),
            SearchArea(deviceSize: deviceSize),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 25),
              width: deviceSize.width - 40,
              child: Text(
                '56+ Restaurants Nearby',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
              ),
            ),
            Wrap(
              children: [
                PageCard(
                  deviceSize: deviceSize,
                  image:
                      'https://www.chicken-republic.com/wp-content/uploads/2020/04/ChickenRepublic_Favicon.png',
                  cat1: 'CHICKEN',
                  cat2: 'FAST FOOD',
                  isLeft: true,
                  shopName: 'Chicken Republick',
                ),
                PageCard(
                  deviceSize: deviceSize,
                  image:
                      'http://logok.org/wp-content/uploads/2015/02/Domino-logo-880x660.png',
                  cat1: 'PIZZA',
                  cat2: 'FAST FOOD',
                  isLeft: false,
                  shopName: 'Dominos',
                ),
                PageCard(
                  deviceSize: deviceSize,
                  image:
                      'https://img1.pnghut.com/6/4/17/yEBK7zzMCZ/vision-care-kfc-facial-hair-colonel-sanders-brand.jpg',
                  cat1: 'CHICKEN',
                  cat2: 'FAST FOOD',
                  isLeft: true,
                  shopName: 'KFC',
                ),
                PageCard(
                  deviceSize: deviceSize,
                  image:
                      'https://globewells.com/wp-content/uploads/2020/02/THE-PLACE.png',
                  cat1: 'PIZZA',
                  cat2: 'AFRICAN',
                  isLeft: false,
                  shopName: 'The Place',
                ),
                PageCard(
                  deviceSize: deviceSize,
                  image:
                      'https://assets.stickpng.com/images/59db6cd73752880e93e16f12.png',
                  cat1: 'CHICKEN',
                  cat2: 'FAST FOOD',
                  isLeft: true,
                  shopName: 'Hard Rock Cafe',
                ),
                PageCard(
                  deviceSize: deviceSize,
                  image:
                      'https://retailbizhub.com/wp-content/uploads/2018/02/mega1.png',
                  cat1: 'PIZZA',
                  cat2: 'AFRICAN',
                  isLeft: false,
                  shopName: 'Mega Chicken',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
