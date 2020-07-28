import 'package:flutter/material.dart';

import 'flavor_environment.dart';

/// FlavorConfig to configure flavors
class FlavorConfig {
  /// FlavorEnvironment are PROP, DEV and TEST
  final FlavorEnvironment environment;

  /// Color of the banner
  final Color color;

  /// Variables are dynamic
  final Map<String, dynamic> variables;

  /// Location of the banner
  final BannerLocation location;

  /// Name is String to replace the name of current default banner name
  final String name;

  /// Instance of FlavorConfig
  static FlavorConfig _instance;

  FlavorConfig._internal(
      this.environment, this.color, this.location, this.name, this.variables);

  static FlavorConfig get instance {
    return _instance;
  }

  factory FlavorConfig(
      {FlavorEnvironment environment: FlavorEnvironment.PROD,
      Color color: Colors.red,
      BannerLocation location: BannerLocation.topStart,
      String name: "",
      @required Map<String, dynamic> variables}) {
    _instance ??=
        FlavorConfig._internal(environment, color, location, name, variables);

    return _instance;
  }
}
