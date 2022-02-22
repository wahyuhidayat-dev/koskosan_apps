import 'package:flutter/material.dart';
import 'package:kost_apps/pages/homescreen.dart';
import 'package:kost_apps/utils/shared.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          const SizedBox(
            height: 214,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Image.asset(
              error,
              width: MediaQuery.of(context).size.width - (2 * edge),
              height: 85,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Text(
            'Where are you going?',
            style: fontMedium.copyWith(fontSize: 24),
          ),
          const SizedBox(height: 14),
          Text(
            'Seems like the page that you were\nrequested is already gone',
            style: fontLight.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                  primary: purpleColor1,
                  fixedSize: const Size.fromHeight(50),
                  padding: EdgeInsets.symmetric(horizontal: 2 * edge),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17))),
              child: Text(
                'Back to Home',
                style: fontBold.copyWith(color: white),
              ))
        ],
      ),
    );
  }
}
