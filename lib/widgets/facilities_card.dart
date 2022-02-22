import 'package:flutter/material.dart';
import 'package:kost_apps/utils/shared.dart';

// ignore: must_be_immutable
class Facilities extends StatelessWidget {
  String name;
  String imageUrl;
  int total;
  Facilities({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        const SizedBox(
          height: 2,
        ),
        Text.rich(
          TextSpan(
              text: '$total',
              style: fontLight.copyWith(color: purpleColor1, fontSize: 14),
              children: [
                TextSpan(
                    text: ' $name',
                    style: fontLight.copyWith(color: greyColor2, fontSize: 14))
              ]),
        ),
      ],
    );
  }
}
