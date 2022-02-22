import 'package:flutter/material.dart';
import 'package:kost_apps/models/city_model.dart';
import 'package:kost_apps/models/recommended_space.dart';
import 'package:kost_apps/models/tips_model.dart';
import 'package:kost_apps/provider/space_provider.dart';
import 'package:kost_apps/utils/shared.dart';
import 'package:kost_apps/widgets/bottom_navbar.dart';
import 'package:kost_apps/widgets/city_card.dart';
import 'package:kost_apps/widgets/recommendedcard.dart';
import 'package:kost_apps/widgets/tips_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //! from Provider
    var spaceProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
        backgroundColor: backgroudColor,
        body: SafeArea(
            bottom: false,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text("Explore Now",
                            style: fontBold.copyWith(fontSize: 22))),
                    const SizedBox(
                      height: 2,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text("Mencari kosan yang cozy",
                            style: fontLight.copyWith(
                                color: greyColor2, fontSize: 14))),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 24, bottom: 20),
                        child: Text("Popular Cities",
                            style: fontMedium.copyWith(fontSize: 20))),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CityCard(
                                city: City(
                              id: 1,
                              name: "Jakarta",
                              imageUrl: city1,
                              ispopular: true,
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CityCard(
                                city: City(
                              id: 2,
                              name: "Bandung",
                              imageUrl: city2,
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CityCard(
                                city: City(
                              id: 3,
                              name: "Surabaya",
                              imageUrl: city3,
                            )),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, bottom: 24),
                      child: Text("Recommended Space",
                          style: fontMedium.copyWith(fontSize: 16)),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: FutureBuilder(
                          future: spaceProvider.getRecommendedSpace(),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.hasData) {
                              List<Recommended> data = snapshot.data;
                              int index = 0;
                              Column(
                                children: data.map((item) {
                                  index++;
                                  return Container(
                                    margin: EdgeInsets.only(
                                        top: index == 1 ? 0 : 20),
                                    child: CardRecommended(space: item),
                                  );
                                }).toList(),
                              );
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, bottom: 24),
                      child: Text('Tips & Guidance',
                          style: fontMedium.copyWith(fontSize: 16)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          TipsGuidance(
                            tips: Tips(
                                id: 1,
                                title: 'City Guidelines',
                                imageUrl: tips1,
                                createdAt: 'Updated 20 Apr'),
                          ),
                          const SizedBox(height: 20),
                          TipsGuidance(
                            tips: Tips(
                                id: 2,
                                title: 'Jakarta Fairship',
                                imageUrl: tips2,
                                createdAt: 'Updated 11 Dec'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ))),
        floatingActionButton: Container(
          height: 65,
          width: MediaQuery.of(context).size.width - (2 * edge),
          margin: EdgeInsets.symmetric(horizontal: edge),
          decoration: BoxDecoration(
              color: greyColor1, borderRadius: BorderRadius.circular(23)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavBar(
                imageUrl: icHomesolid,
                isActive: true,
              ),
              BottomNavBar(
                imageUrl: icCard,
                isActive: false,
              ),
              BottomNavBar(
                imageUrl: icMail,
                isActive: false,
              ),
              BottomNavBar(
                imageUrl: icLove,
                isActive: false,
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
