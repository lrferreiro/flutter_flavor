import 'package:flutter/material.dart';

import 'flavor_environment.dart';

class FlavorConfig {
    final FlavorEnvironment environment;
    final Color color;
    final Map<String, dynamic> variables;

    static FlavorConfig _instance;

    FlavorConfig._internal(this.environment, this.color, this.variables);

    static FlavorConfig get instance {
        return _instance;
    }

    factory FlavorConfig({ FlavorEnvironment environment: FlavorEnvironment.PROD,
                             Color color: Colors.red,
                             @required Map<String, String> variables
                         }){
        _instance ??= FlavorConfig
                ._internal(environment, color, variables);

        return _instance;
    }
}