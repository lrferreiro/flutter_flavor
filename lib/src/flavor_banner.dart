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

        return Stack(
            children: <Widget>[
                child,
                Container(
                    width: 50,
                    height: 50,
                    child: CustomPaint(
                        painter: BannerPainter(
                                message: FlavorConfig.instance.environment
                                        .toString()
                                        .split(".")
                                        .last,
                                textDirection: Directionality.of(context),
                                layoutDirection: Directionality.of(context),
                                location: BannerLocation.topStart,
                                color: FlavorConfig.instance.color
                        ),
                    ),
                )
            ],
        );
    }
}