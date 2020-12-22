import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  final Size size;
  final IconData icon;
  const IconButtons({
    Key key,
    this.size,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(5, 5),
              color: Colors.black.withOpacity(0.3),
              blurRadius: 15),
        ],
      ),
      child: Icon(icon),
    );
  }
}
