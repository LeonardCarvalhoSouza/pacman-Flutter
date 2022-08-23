import 'package:bonfire/bonfire.dart';

class EspecialSpriteSheet {
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
        'sprites/maptilesetg2.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.05,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 16),
        ),
      );

  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        'sprites/maptilesetg2.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.05,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 16),
        ),
      );

  static Future<SpriteAnimation> get idleRunLeft => SpriteAnimation.load(
        'sprites/maptilesetg2.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.05,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 16),
        ),
      );

  static Future<SpriteAnimation> get idleRunRight => SpriteAnimation.load(
        'sprites/maptilesetg2.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.05,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 16),
        ),
      );
}
