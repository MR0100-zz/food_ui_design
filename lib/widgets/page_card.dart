import 'package:flutter/material.dart';

class PageCard extends StatelessWidget {
  final bool isLeft;
  final String cat1;
  final String cat2;
  final String shopName;
  final String image;
  const PageCard({
    Key key,
    @required this.deviceSize,
    this.isLeft = false,
    this.cat1,
    this.cat2,
    this.shopName,
    @required this.image,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isLeft
          ? EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10)
          : EdgeInsets.only(top: 00, left: 10, right: 10, bottom: 10),
      width: (deviceSize.width - 50) / 2,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300], blurRadius: 30, offset: Offset(-10, 10))
        ],
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 45,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Image(
                image: NetworkImage(image),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 20,
                      offset: Offset(3, 2)),
                ],
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.red[900],
                size: 20,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.5),
            child: Container(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 5,
                  ),
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
                    ],
                  ),
                  Row(
                    children: [
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
                          cat1.toString(),
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
                          cat2.toString(),
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
