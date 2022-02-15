import 'package:flutter/material.dart';
import 'package:kost_apps/utils/shared.dart';

class BottomNavBar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const BottomNavBar({
    Key? key,
    required this.imageUrl,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        const Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: purpleColor2,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(100))),
              )
            : Container()
      ],
    );
  }
}
