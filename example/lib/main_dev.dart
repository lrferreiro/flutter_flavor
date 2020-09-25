import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'my_app.dart';

void main() {
  FlavorConfig(
      name: "DEVEL",
      color: Colors.red,
      location: BannerLocation.topStart,
      visibility: true,
      variables: {
        "counter": 5,
        "baseUrl": "https://www.example2.com",
      });
  return runApp(MyApp());
}
