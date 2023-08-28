import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'my_app.dart';

void main() {
  FlavorConfig(
    variables: {
      "counter": 0,
      "baseUrl": "https://www.example1.com",
    },
  );

  runApp(const MyApp());
}