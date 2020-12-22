import 'package:flutter/material.dart';

import 'icon_button.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: deviceSize.width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Container(
            width: deviceSize.width / 1.45,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey[400],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.search,
                  size: 30,
                ),
                Text(
                  'Find food or restaurants nearby',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 5,
                )
              ],
            ),
          ),
          Spacer(),
          IconButtons(
            icon: Icons.assistant_sharp,
            size: Size(50, 50),
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}
