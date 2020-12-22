import 'package:flutter/material.dart';
import 'package:ui_design_1/widgets/shop_card.dart';

class FeaturedRestorants extends StatelessWidget {
  const FeaturedRestorants({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
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
                    ShopCart(
                      image:
                          'https://www.chicken-republic.com/wp-content/uploads/2020/05/ChickenRepublic_StoreFront-3.jpg',
                      shopName: 'Chicken Republic',
                      category1: 'CHICKEN',
                      category2: 'FAST FOOD',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ShopCart(
                      image:
                          'https://vecamspot.com/wp-content/uploads/2019/07/dominos-pizza-store-560x416.jpg',
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
          )
        ],
      ),
    );
  }
}
