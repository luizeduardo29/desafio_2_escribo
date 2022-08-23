import 'package:bonfire/bonfire.dart';
import 'package:game_maze/enemy/enemy_sprite.dart';
import 'package:game_maze/main.dart';

class EnemyNpc extends SimpleEnemy with ObjectCollision {
  EnemyNpc()
      : super(
          position: Vector2(
            tileSize * 10,
            tileSize * 13,
          ),
          size: Vector2(
            tileSize,
            tileSize,
          ),
          speed: 50,
          animation: SimpleDirectionAnimation(
            idleRight: EnemySprite.idleRight,
            idleLeft: EnemySprite.idleLeft,
            runRight: EnemySprite.runRight,
            runLeft: EnemySprite.runLeft,
          ),
          life: 50,
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(1, 1),
            align: Vector2(1, 15),
          ),
        ],
      ),
    );
  }
  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        simpleAttackMelee(
            damage: 10,
            size: Vector2(20, 20),
            direction: lastDirection,
            withPush: true);
      },
      radiusVision: 20 * 20,
    );
    super.update(dt);
  }
}
