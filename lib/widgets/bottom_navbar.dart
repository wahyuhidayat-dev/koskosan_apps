import 'package:flutter/material.dart';
import 'package:kost_apps/utils/shared.dart';

class BottomNavBar extends StatelessWidget {
  String imageUrl;

  BottomNavBar({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 26,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(imageUrl),
        ],
      ),
    );
  }
}
