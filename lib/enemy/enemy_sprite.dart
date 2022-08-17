import 'package:bonfire/bonfire.dart';

class EnemySprite {
  static Future<SpriteAnimation> _sequenceImage(
    String fileName, {
    int amount = 6,
  }) {
    return SpriteAnimation.load(
      'enemy/$fileName',
      SpriteAnimationData.sequenced(
        amount: amount,
        stepTime: 0.25,
        textureSize: Vector2(16, 16),
        texturePosition: Vector2(0, 0),
      ),
    );
  }

  static Future<SpriteAnimation> get idleLeft =>
      _sequenceImage('goblin_idle_left.png');
  static Future<SpriteAnimation> get idleRight =>
      _sequenceImage('goblin_idle_right.png');
  static Future<SpriteAnimation> get runLeft =>
      _sequenceImage('goblin_run_left.png');
  static Future<SpriteAnimation> get runRight =>
      _sequenceImage('goblin_run_right.png');
  /*static Future<SpriteAnimation> get die =>
      _sequenceImage('knight_die.png', amount: 1);*/
}
