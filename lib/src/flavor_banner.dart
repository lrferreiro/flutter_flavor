import 'package:flutter/material.dart';

import 'flavor_config.dart';

/// Widget for draw banner
class FlavorBanner extends StatelessWidget {
  /// Widget inside FlavorBanner
  final Widget? child;

  /// Color of the banner
  final Color? color;

  /// Location of the banner
  final BannerLocation? location;

  const FlavorBanner({
    Key? key,
    this.child,
    this.color,
    this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (FlavorConfig.instance.name?.isEmpty == true) {
      return child!;
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        color: color ?? FlavorConfig.instance.color,
        message: FlavorConfig.instance.name ?? "",
        location: location ?? FlavorConfig.instance.location,
        textStyle: TextStyle(
          color: _color,
          fontSize: 12.0 * 0.85,
          fontWeight: FontWeight.w900,
          height: 1.0,
        ),
        child: child,
      ),
    );
  }

  Color get _color =>
      HSLColor.fromColor(color ?? FlavorConfig.instance.color).lightness < 0.8
          ? Colors.white
          : Colors.black87;
}
