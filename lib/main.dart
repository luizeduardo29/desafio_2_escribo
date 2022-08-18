import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:game_maze/enemy/enemy_npc.dart';
import 'package:game_maze/player/pacman_player.dart';

import 'object/special_Item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      map: TiledWorldMap(
        'map/mapa.json',
      ),
      player: PacmanPlayer(),
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(
          keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows,
        ),
      ),
      showCollisionArea: false,
      components: [EnemyNpc(), SpecialObject()],
      cameraConfig: CameraConfig(moveOnlyMapArea: true),
    );
  }
}
