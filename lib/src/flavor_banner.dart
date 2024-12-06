import 'package:flutter/material.dart';

import 'flavor_config.dart';

/// Widget for draw banner
class FlavorBanner extends StatefulWidget {
  /// Widget inside FlavorBanner
  final Widget? child;

  /// Color of the banner
  final Color? color;

  /// Location of the banner
  final BannerLocation? location;

  const FlavorBanner({
    super.key,
    this.child,
    this.color,
    this.location,
  });

  @override
  State<FlavorBanner> createState() => _FlavorBannerState();
}

class _FlavorBannerState extends State<FlavorBanner> {
  @override
  Widget build(BuildContext context) {
    if (FlavorConfig.instance.name?.isNotEmpty == true) {
      return Directionality(
        textDirection: TextDirection.ltr,
        child: Banner(
          color: widget.color ?? FlavorConfig.instance.color,
          message: FlavorConfig.instance.name ?? "",
          location: widget.location ?? FlavorConfig.instance.location,
          textStyle: TextStyle(
            color: _color,
            fontSize: 12.0 * 0.85,
            fontWeight: FontWeight.w900,
            height: 1.0,
          ),
          child: widget.child,
        ),
      );
    }

    return widget.child!;
  }

  Color get _color =>
      HSLColor.fromColor(widget.color ?? FlavorConfig.instance.color)
                  .lightness <
              0.8
          ? Colors.white
          : Colors.black87;
}
