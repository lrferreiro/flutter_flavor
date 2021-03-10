import 'package:flutter/material.dart';

import 'flavor_config.dart';

/// Widget for draw banner
class FlavorBanner extends StatelessWidget {
  /// Widget inside FlavorBanner
  final Widget child;

  final Color? color;

  final BannerLocation? location;

  FlavorBanner({
    Key? key,
    required this.child,
    this.color,
    this.location,
  });

  @override
  Widget build(BuildContext context) {
    if (FlavorConfig.instance.name == null ||
        FlavorConfig.instance.name!.isEmpty) {
      return child;
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        color: color != null ? color! : FlavorConfig.instance.color,
        message: FlavorConfig.instance.name!,
        location: location != null ? location! : FlavorConfig.instance.location,
        child: child,
      ),
    );
  }
}
