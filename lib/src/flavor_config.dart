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
  final Map<String, dynamic>? variables;

  /// Instance of FlavorConfig
  static FlavorConfig? _instance;

  FlavorConfig._internal(
    this.name,
    this.color,
    this.location,
    this.variables,
  );

  static FlavorConfig? get instance {
    return _instance;
  }

  factory FlavorConfig({
    String? name,
    Color color = Colors.red,
    BannerLocation location = BannerLocation.topStart,
    Map<String, dynamic>? variables,
  }) {
    _instance ??= FlavorConfig._internal(
      name,
      color,
      location,
      variables,
    );

    return _instance!;
  }
}
