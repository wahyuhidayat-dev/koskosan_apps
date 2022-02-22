import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:kost_apps/pages/error_dart.dart';
import 'package:kost_apps/utils/shared.dart';
import 'package:kost_apps/widgets/facilities_card.dart';
import 'package:kost_apps/widgets/photos_card.dart';

class DetailPages extends StatelessWidget {
  const DetailPages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        //throw (url);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ErrorPage()));
      }
    }

    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
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
                Container(
                  color: white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: edge, vertical: edge),
                        child: Text('Main Facilities',
                            style: fontMedium.copyWith(fontSize: 16)),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Facilities(
                                name: 'kitchen', imageUrl: kitchen, total: 2),
                            Facilities(
                                name: 'lemari', imageUrl: lemari, total: 3),
                            Facilities(
                                name: 'bedroom', imageUrl: bedroom, total: 2),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //! PHOTOS
                Container(
                  color: white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: edge, vertical: edge),
                        child: Text('Photos',
                            style: fontMedium.copyWith(fontSize: 16)),
                      ),
                      SizedBox(
                        height: 110,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(
                              width: 18,
                            ),
                            Photos(imageUrl: photos1),
                            const SizedBox(
                              width: 18,
                            ),
                            Photos(imageUrl: photos2),
                            const SizedBox(
                              width: 18,
                            ),
                            Photos(imageUrl: photos3),
                            const SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //! LOCATION
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Location',
                                style: fontMedium.copyWith(fontSize: 16)),
                            Text(
                              'Jln. Kappan Sukses No. 20',
                              style: fontMedium.copyWith(
                                  fontSize: 14, color: greyColor2),
                            )
                          ],
                        ),
                        Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: greyColor1),
                            child: InkWell(
                              onTap: () {
                                launchUrl(
                                    "https://www.google.co.id/maps/@-5.230236,119.5014263,792m/data=!3m1!1e3?hl=id");
                              },
                              child: Icon(
                                Icons.location_on,
                                color: greyColor2,
                              ),
                            ))
                      ],
                    )),
                //! BUTTON BOOK NOW
                Container(
                  margin: EdgeInsets.symmetric(horizontal: edge),
                  height: 50,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: purpleColor1),
                  child: InkWell(
                    onTap: () {
                      launchUrl('tel:+6281295700877');
                    },
                    child: Center(
                      child: Text(
                        'Book Now',
                        style: fontMedium.copyWith(color: white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
