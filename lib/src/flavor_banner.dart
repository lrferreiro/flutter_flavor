import 'package:flutter/material.dart';

import 'flavor_config.dart';

/// Widget for draw banner
class FlavorBanner extends StatelessWidget {
  /// Widget inside FlavorBanner
  final Widget child;

  FlavorBanner({Key key, @required this.child});

  @override
  Widget build(BuildContext context) {
    if (!FlavorConfig.instance.visibility) {
      return child;
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        color: FlavorConfig.instance.color,
        message: FlavorConfig.instance.name,
        location: FlavorConfig.instance.location,
        child: child,
      ),
    );
  }
}
