# flutter_flavor

Easy and fast configuration of flavors in your Flutter App.

## Getting Started

### Configuration

add

```yaml

flutter_flavor: <last_version>

```

## Example

in main files for environments

```dart

import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

void main() async {
    FlavorConfig(
            environment: FlavorEnvironment.DEV,
            color: Colors.red,
            variables: {
                "variable1": 123,
                "variable2": "string"
            });
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
    }
}

class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);
    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _counter = 0;

    void _incrementCounter() {
        setState(() {
            _counter++;
        });
    }

    @override
    Widget build(BuildContext context) {
        return FlavorBanner(
                child: Scaffold(
                    appBar: AppBar(
                        title: Text(widget.title),
                    ),
                    body: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                                Text(
                                    'You have pushed the button this many times:',
                                ),
                                Text(
                                    '$_counter',
                                    style: Theme
                                            .of(context)
                                            .textTheme
                                            .display1,
                                ),
                            ],
                        ),
                    ),
                    floatingActionButton: FloatingActionButton(
                        onPressed: _incrementCounter,
                        tooltip: 'Increment',
                        child: Icon(Icons.add),
                    ), // This trailing comma makes auto-formatting nicer for build methods.
                )
        );
    }
}

```