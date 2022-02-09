import 'package:flutter/material.dart';
import 'package:kost_apps/models/city_model.dart';

import 'package:kost_apps/utils/shared.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        decoration: BoxDecoration(color: greyColor1, boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(0, 3),
              spreadRadius: 5)
        ]),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.ispopular
                    //? NOTE: CARD STAR IF POPULAR
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              color: purpleColor2,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(36))),
                          child: Center(
                            child: Image.asset(star, width: 22, height: 22),
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: fontMedium.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
