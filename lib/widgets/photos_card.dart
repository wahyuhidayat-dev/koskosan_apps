import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  String imageUrl;
  Photos({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:
              DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover)),
    );
  }
}
