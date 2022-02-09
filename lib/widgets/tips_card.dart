import 'package:flutter/material.dart';
import 'package:kost_apps/utils/shared.dart';

class TipsGuidance extends StatelessWidget {
  const TipsGuidance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 321,
      height: 80,
      child: Row(
        children: [
          Image.asset(
            tips1,
            width: 80,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'City Guidelines',
                style: fontBold.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Updated 20 Apr',
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
