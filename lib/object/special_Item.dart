import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';

class SpecialObject extends GameDecoration with ObjectCollision {
  SpecialObject()
      : super.withAnimation(
          animation: SpriteAnimation.load(
            "objects/Coin_1.png",
            SpriteAnimationData.sequenced(
              amount: 1,
              stepTime: 1,
              textureSize: Vector2(
                20,
                20,
              ),
            ),
          ),
          position: Vector2(
            20 * 9.5,
            20 * 20,
          ),
          size: Vector2(
            25,
            25,
          ),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(10, 10),
            align: Vector2(5, 5),
          ),
        ],
      ),
    );
  }
}
