import 'package:flutter/material.dart';

import 'icon_button.dart';

class HeaderAppbar extends StatelessWidget {
  const HeaderAppbar({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Size.fromHeight(120).height,
        width: deviceSize.width,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButtons(
              icon: Icons.menu,
              size: Size(40, 40),
            ),
            Container(
              width: deviceSize.width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Deliver to',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                      )
                    ],
                  ),
                  Text(
                    '8. Anthony Estate...',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            IconButtons(
              icon: Icons.notifications,
              size: Size(40, 40),
            )
          ],
        ));
  }
}
