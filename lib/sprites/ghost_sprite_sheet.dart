import 'package:bonfire/bonfire.dart';

class GhostSpriteSheet {
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
        'sprites/blinky.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.05,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(16, 0),
        ),
      );

  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        'sprites/blinky.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.05,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(32, 16),
        ),
      );

  static Future<SpriteAnimation> get idleRunLeft => SpriteAnimation.load(
        'sprites/blinky.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.05,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(16, 0),
        ),
      );

  static Future<SpriteAnimation> get idleRunRight => SpriteAnimation.load(
        'sprites/blinky.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.05,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(32, 16),
        ),
      );
}
