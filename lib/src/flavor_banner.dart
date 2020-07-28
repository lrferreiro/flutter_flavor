import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'flavor_environment.dart';

/// Widget for draw banner
class FlavorBanner extends StatelessWidget {
  /// Widget inside FlavorBanner
  final Widget child;

  FlavorBanner({Key key, @required this.child});

  @override
  Widget build(BuildContext context) {
    /// The banner in the `PROD` environment don't showed
    if (FlavorConfig.instance.environment == FlavorEnvironment.PROD) {
      return child;
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        color: FlavorConfig.instance.color,
        message: (FlavorConfig.instance.name.isNotEmpty)
            ? FlavorConfig.instance.name
            : FlavorConfig.instance.environment.toString().split(".").last,
        location: FlavorConfig.instance.location,
        child: child,
      ),
    );
  }
}
