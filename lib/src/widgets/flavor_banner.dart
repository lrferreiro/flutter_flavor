import 'package:flutter/material.dart';

import '../util/flavor_config.dart';

/// Widget for draw banner
class FlavorBanner extends StatelessWidget {
  /// Widget inside FlavorBanner
  final Widget? child;

  final Color? color;

  final BannerLocation? location;

  FlavorBanner({
    Key? key,
    this.child,
    this.color,
    this.location,
  });

  @override
  Widget build(BuildContext context) {
    if (FlavorConfig.instance!.name == null ||
        FlavorConfig.instance!.name!.isEmpty) {
      return child!;
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        color: color ?? FlavorConfig.instance!.color,
        message: FlavorConfig.instance!.name!,
        location:
            location != null ? location! : FlavorConfig.instance!.location,
        child: child,
        textStyle: TextStyle(
          color: (HSLColor.fromColor(color ?? FlavorConfig.instance!.color)
                      .lightness <
                  0.8
              ? Colors.white
              : Colors.black87),
          fontSize: 12.0 * 0.85,
          fontWeight: FontWeight.w900,
          height: 1.0,
        ),
      ),
    );
  }
}
