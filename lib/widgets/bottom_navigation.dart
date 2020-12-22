import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  final int selectedIndex;
  final Function onTap;
  const BottomNavigationBarCustom({
    Key key,
    @required this.deviceSize,
    this.selectedIndex,
    this.onTap,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: deviceSize.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 5.0,
          ),
        ],
        color: Colors.grey[800],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              onTap(0);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: selectedIndex == 0 ? Colors.orange : Colors.white,
                  size: 40,
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(1);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: selectedIndex == 1 ? Colors.orange : Colors.white,
                  size: 40,
                ),
                Text(
                  'Location',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(2);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.card_travel,
                  color: selectedIndex == 2 ? Colors.orange : Colors.white,
                  size: 40,
                ),
                Text(
                  'Cart',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(3);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_outline,
                  color: selectedIndex == 3 ? Colors.orange : Colors.white,
                  size: 40,
                ),
                Text(
                  'Profile',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
