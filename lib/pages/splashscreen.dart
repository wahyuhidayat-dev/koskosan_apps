import 'package:flutter/material.dart';

import 'package:kost_apps/utils/shared.dart';

import 'homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      body: SafeArea(
        bottom: false,
        child: Stack(children: [
          Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                child: Image.asset(bottom, fit: BoxFit.cover),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(logo), fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Find Cozy House\nto Stay and Happy",
                  style: fontMedium.copyWith(fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                    "Stop membuang banyak waktu\npada tempat yang tidak habitable",
                    style: fontLight.copyWith(fontSize: 14, color: greyColor2)),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: const Text("Explore Now"),
                    style: ElevatedButton.styleFrom(
                        primary: purpleColor1,
                        fixedSize: const Size(210, 50),
                        textStyle: fontMedium.copyWith(color: backgroudColor),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17))))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
