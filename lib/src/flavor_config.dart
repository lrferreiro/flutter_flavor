import 'package:flutter/material.dart';

/// FlavorConfig to configure flavors
class FlavorConfig {
  /// Name of flavor
  final String? name;

  /// Color of the banner
  final Color color;

  /// Location of the banner
  final BannerLocation location;

  /// Variables are dynamic
  final Map<String, dynamic> variables;

  /// Private constructor
  FlavorConfig._internal(this.name, this.color, this.location, this.variables);

  /// Internal instance of FlavorConfig
  static FlavorConfig? _instance;

  /// Instance of FlavorConfig
  static FlavorConfig get instance {
    _instance ??= FlavorConfig();

    return _instance!;
  }

  /// Factory constructor
  factory FlavorConfig({
    String? name,
    Color color = Colors.red,
    BannerLocation location = BannerLocation.topStart,
    Map<String, dynamic> variables = const {},
  }) {
    _instance = FlavorConfig._internal(
      name,
      color,
      location,
      variables,
    );

    return _instance!;
  }
}
