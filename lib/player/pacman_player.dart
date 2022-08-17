import 'package:bonfire/bonfire.dart';
import 'package:game_maze/player/pacman_sprite.dart';

class PacmanPlayer extends SimplePlayer with ObjectCollision {
  PacmanPlayer()
      : super(
          position: Vector2(
            20 * 9.5,
            20 * 9.5,
          ),
          size: Vector2(
            20,
            20,
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
            size: Vector2(1, 1),
            align: Vector2(1, 1),
          ),
        ],
      ),
    );
  }
}
