import 'package:flutter/material.dart';

import 'food_story_image.dart';

class StorySection extends StatelessWidget {
  const StorySection({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: deviceSize.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            SizedBox(width: 10),
            FoodStoryImage(
                image:
                    'https://cdn.pixabay.com/photo/2015/07/02/11/58/food-829055_1280.jpg',
                name: 'All'),
            FoodStoryImage(
                image:
                    'https://image.shutterstock.com/image-photo/cheesecake-blueberries-almond-raisins-sliced-260nw-1110314810.jpg',
                name: 'Fastfood'),
            FoodStoryImage(
              image:
                  'https://images.squarespace-cdn.com/content/v1/5685a06669492ea07bb9b05d/1566235783571-1ZACNSCRYDRHSISYT3YX/ke17ZwdGBToddI8pDm48kCepA1I-XAHSM0rqtdM1n1MUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8PaoYXhp6HxIwZIk7-Mi3Tsic-L2IOPH3Dwrhl-Ne3Z2l6g3vw7wxKGoZofX5CnaIZevLvjSk-WjxbixgPumvKOhHAH51QaxKq4KdVMVBxpG/AFB-9173.jpg',
              name: 'African',
            ),
            FoodStoryImage(
                image:
                    'https://media-cdn.tripadvisor.com/media/photo-s/14/c2/e7/cc/food-image.jpg',
                name: 'Chinese'),
            FoodStoryImage(
                image:
                    'https://cdn.pixabay.com/photo/2015/07/02/11/58/food-829055_1280.jpg',
                name: 'Pizza'),
            FoodStoryImage(
                image:
                    'https://image.shutterstock.com/image-photo/cheesecake-blueberries-almond-raisins-sliced-260nw-1110314810.jpg',
                name: 'Fastfood'),
            FoodStoryImage(
              image:
                  'https://images.squarespace-cdn.com/content/v1/5685a06669492ea07bb9b05d/1566235783571-1ZACNSCRYDRHSISYT3YX/ke17ZwdGBToddI8pDm48kCepA1I-XAHSM0rqtdM1n1MUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8PaoYXhp6HxIwZIk7-Mi3Tsic-L2IOPH3Dwrhl-Ne3Z2l6g3vw7wxKGoZofX5CnaIZevLvjSk-WjxbixgPumvKOhHAH51QaxKq4KdVMVBxpG/AFB-9173.jpg',
              name: 'African',
            ),
            FoodStoryImage(
                image:
                    'https://media-cdn.tripadvisor.com/media/photo-s/14/c2/e7/cc/food-image.jpg',
                name: 'Chinese'),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
