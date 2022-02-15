import 'package:flutter/material.dart';
import 'package:kost_apps/utils/shared.dart';
import 'package:kost_apps/widgets/facilities_card.dart';

class DetailPages extends StatelessWidget {
  const DetailPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              thum,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      btnBack,
                      width: 40,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      btnWishlist,
                      width: 40,
                    ),
                  )
                ],
              ),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(20)),
                      color: white),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: fontMedium.copyWith(
                                      fontSize: 22, color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: '\$52',
                                      style: fontLight.copyWith(
                                          color: purpleColor1, fontSize: 16),
                                      children: [
                                        TextSpan(
                                            text: ' / month',
                                            style: fontLight.copyWith(
                                                color: greyColor2))
                                      ]),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  star,
                                  width: 20,
                                ),
                                Image.asset(
                                  star,
                                  width: 20,
                                ),
                                Image.asset(
                                  star,
                                  width: 20,
                                ),
                                Image.asset(
                                  star,
                                  width: 20,
                                ),
                                Image.asset(
                                  starGrey,
                                  width: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //! MAIN FACILITIES
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                  child: Text('Main Facilities',
                      style: fontMedium.copyWith(fontSize: 16)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Facilities(name: 'kitchen', imageUrl: kitchen, total: 2),
                      Facilities(name: 'lemari', imageUrl: lemari, total: 3),
                      Facilities(name: 'bedroom', imageUrl: bedroom, total: 2),
                    ],
                  ),
                ),
                //! PHOTOS
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                  child:
                      Text('Photos', style: fontMedium.copyWith(fontSize: 16)),
                ),
                SizedBox(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(
                        width: 18,
                      ),
                      Container(
                        width: 110,
                        height: 88,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                image: AssetImage(photos1), fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Container(
                        width: 110,
                        height: 88,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                image: AssetImage(photos2), fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Container(
                        width: 110,
                        height: 88,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                image: AssetImage(photos3), fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                    ],
                  ),
                ),
                //! LOCATION
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                  child: Text('Location',
                      style: fontMedium.copyWith(fontSize: 16)),
                ),
                Row(
                  children: [
                    Text(
                      'Jln. Kappan Sukses No. 20',
                      style:
                          fontMedium.copyWith(fontSize: 14, color: greyColor2),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
