import 'package:flutter/material.dart';

import 'flavor_environment.dart';

class FlavorConfig {
  final FlavorEnvironment environment;
  final Color color;
  final Map<String, dynamic> variables;
  final BannerLocation location;

  static FlavorConfig _instance;

  FlavorConfig._internal(
      this.environment, this.color, this.location, this.variables);

  static FlavorConfig get instance {
    return _instance;
  }

  factory FlavorConfig(
      {FlavorEnvironment environment: FlavorEnvironment.PROD,
      Color color: Colors.red,
      BannerLocation location: BannerLocation.topStart,
      @required Map<String, dynamic> variables}) {
    _instance ??=
        FlavorConfig._internal(environment, color, location, variables);

    return _instance;
  }
}
