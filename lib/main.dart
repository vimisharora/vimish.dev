import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vimish',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Key parallax = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ParallaxRain(
                  key: parallax,
                    dropFallSpeed: 0.4,
                    numberOfLayers: 4,
                    numberOfDrops: 80,
                    trailStartFraction: 0.01,
                    dropColors:  [Colors.deepPurple.shade800],
                    trail: true,
                    child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            // this is the landing card.
                            // Card has the intro for the site.
                             Home(),
                          ],
                        ),
                  ),
                )
            ],
          ),
        ),
      ],
    ),
    );
  }
}
