import 'package:flutter/material.dart';

import 'package:kost_apps/models/recommended_space.dart';
import 'package:kost_apps/utils/shared.dart';

class CardRecommended extends StatelessWidget {
  Recommended space;

  CardRecommended({
    Key? key,
    required this.space,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 329,
      color: backgroudColor,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(space.image_url),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpleColor2,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(36))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(star, width: 22, height: 22),
                          Text(
                            '${space.rating}/5',
                            style:
                                fontMedium.copyWith(color: white, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: fontMedium.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                    text: '\$${space.price}',
                    style:
                        fontLight.copyWith(color: purpleColor1, fontSize: 16),
                    children: [
                      TextSpan(
                          text: ' / month',
                          style: fontLight.copyWith(color: greyColor2))
                    ]),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: fontMedium.copyWith(fontSize: 14, color: greyColor2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
