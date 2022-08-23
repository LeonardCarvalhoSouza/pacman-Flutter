import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/players/especial.dart';
import 'package:pacman/players/ghost.dart';
import 'package:pacman/players/hero.dart';
import 'package:pacman/players/ponto.dart';

const double tileSize = 16;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      title: 'Score ',
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(),
      ), // required
      map: TiledWorldMap(
        'maps/map1.json',
        objectsBuilder: {
          'ghost': (properties) => Ghost(properties.position),
          'ponto': (properties) => Ponto(properties.position),
          'especial': (properties) => Especial(properties.position),
        },
        forceTileSize: const Size(tileSize, tileSize),
      ),
      player: GameHero(Vector2(14 * tileSize, 13 * tileSize)),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        zoom: 1.5,
      ),
      // showCollisionArea: true,
    );
  }
}
