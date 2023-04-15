import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  final Color color;

  const MyCircleAvatar({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 36.0,
        backgroundColor: color,
        child: Icon(
          Icons.face,
          color: Colors.black,
          size: 54.0,
        ),
      ),
    );
  }
}
