import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:kost_apps/models/recommended_space.dart';

class SpaceProvider extends ChangeNotifier {
  getRecommendedSpace() async {
    // var url = Uri.parse("https://bwa-cozy.herokuapp.com/recommended-spaces");
    // var result = await http.get(url);

    var dio = Dio();
    var result =
        await dio.get("https://bwa-cozy.herokuapp.com/recommended-spaces");

    print(result.statusCode);
    print(result.data);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.data);
      List<Recommended> spaces =
          data.map((item) => Recommended.fromJson(item)).toList();
      return spaces;
    } else {
      return <Recommended>[];
    }
  }
}
