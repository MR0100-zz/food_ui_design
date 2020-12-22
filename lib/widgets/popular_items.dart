import 'package:flutter/material.dart';
import 'package:ui_design_1/widgets/popcards.dart';
import 'package:ui_design_1/widgets/shop_card.dart';

class PopularRestorants extends StatelessWidget {
  const PopularRestorants({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: deviceSize.width,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 25.0),
              Text(
                'Featured Resturants',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              Text(
                'View all',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.pink[900]),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 30,
                color: Colors.pink[900],
              ),
              SizedBox(
                width: 25.0,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    PopCard(
                      image:
                          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-homemade-pizza-horizontal-1542312378.png',
                      shopName: 'Chicken Republic',
                      category1: 'CHICKEN',
                      category2: 'FAST FOOD',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    PopCard(
                      image:
                          'https://newcastlebeach.org/images/burger-image-5.jpg',
                      shopName: 'Dominos',
                      category1: 'Pizza',
                      category2: 'FAST FOOD',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
