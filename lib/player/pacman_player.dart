import 'package:bonfire/bonfire.dart';
import 'package:game_maze/main.dart';
import 'package:game_maze/player/pacman_sprite.dart';

class PacmanPlayer extends SimplePlayer with ObjectCollision {
  PacmanPlayer()
      : super(
          position: Vector2(
            tileSize * 9.5,
            tileSize * 9.5,
          ),
          size: Vector2(
            tileSize,
            tileSize,
          ),
          animation: SimpleDirectionAnimation(
            idleRight: PacmanSprite.idleRight,
            runRight: PacmanSprite.runRight,
            idleLeft: PacmanSprite.idleLeft,
            runLeft: PacmanSprite.runLeft,
          ),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(20, 20),
            align: Vector2(6, 15),
          ),
        ],
      ),
    );
  }
}
