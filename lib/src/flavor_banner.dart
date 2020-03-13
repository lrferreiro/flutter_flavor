import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'flavor_environment.dart';

class FlavorBanner extends StatelessWidget {
    final Widget child;

    FlavorBanner({Key key, @required this.child});

    @override
    Widget build(BuildContext context) {
        if (FlavorConfig.instance.environment == FlavorEnvironment.PROD) {
            return child;
        }

        return Directionality(
            textDirection: TextDirection.ltr,
            child: Banner(
                color: FlavorConfig.instance.color,
                message: FlavorConfig.instance.environment
                        .toString()
                        .split(".")
                        .last,
                location: BannerLocation.topStart,
                child: child,
            ),
        );
    }
}