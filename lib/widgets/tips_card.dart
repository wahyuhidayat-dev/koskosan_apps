import 'package:flutter/material.dart';

import 'package:kost_apps/models/tips_model.dart';
import 'package:kost_apps/utils/shared.dart';

class TipsGuidance extends StatelessWidget {
  final Tips tips;
  const TipsGuidance({
    Key? key,
    required this.tips,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 321,
      height: 80,
      child: Row(
        children: [
          Image.asset(
            tips.imageUrl,
            width: 80,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tips.title,
                style: fontBold.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                tips.createdAt,
                style: fontLight.copyWith(fontSize: 15, color: greyColor2),
              )
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right,
                color: greyColor2,
              ))
        ],
      ),
    );
  }
}
