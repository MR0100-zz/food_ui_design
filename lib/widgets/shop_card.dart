import 'package:flutter/material.dart';

class ShopCart extends StatelessWidget {
  final String image;
  final String shopName;
  final String category1;
  final String category2;
  const ShopCart({
    Key key,
    this.image,
    this.shopName,
    this.category1,
    this.category2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey[200],
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              color: Colors.black.withOpacity(0.2),
              offset: Offset(5, 10),
            )
          ]),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              image: DecorationImage(
                  image: NetworkImage(image.toString()), fit: BoxFit.fill),
            ),
            height: 130,
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.9),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(5, 5),
                      color: Colors.black.withOpacity(0.4),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '4.5',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.pink[900],
                    size: 15,
                  ),
                  Text(
                    '(25+)',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(5, 5),
                    color: Colors.black.withOpacity(0.4),
                  ),
                ],
                color: Colors.white.withOpacity(0.9),
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.pink[900],
                size: 20.0,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        shopName.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.verified, size: 15, color: Colors.grey[600])
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.directions_bike,
                        size: 15,
                        color: Colors.pink[900],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'free delivery',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.timer,
                        size: 15,
                        color: Colors.pink[900],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '30 - 45 mins',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          category1.toString(),
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          category2.toString(),
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
