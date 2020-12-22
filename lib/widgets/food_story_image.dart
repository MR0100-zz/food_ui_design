import 'package:flutter/material.dart';

class FoodStoryImage extends StatelessWidget {
  final String image;
  final String name;
  const FoodStoryImage({
    Key key,
    this.image,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.black,
            ),
            alignment: Alignment.center,
            child: Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: NetworkImage(image.toString()), fit: BoxFit.fill),
              ),
            ),
          ),
          Text(
            name.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
