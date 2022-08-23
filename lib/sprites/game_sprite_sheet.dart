import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  static Future<SpriteAnimation> get heroIdleLeft => SpriteAnimation.load(
        'sprites/direita.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.05,
          textureSize: Vector2(15, 15),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get heroIdleRight => SpriteAnimation.load(
        'sprites/teste.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.05,
          textureSize: Vector2(15, 15),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get heroIdleRunLeft => SpriteAnimation.load(
        'sprites/direita.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.05,
          textureSize: Vector2(15, 15),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get heroIdleRunRight => SpriteAnimation.load(
        'sprites/teste.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.05,
          textureSize: Vector2(15, 15),
          texturePosition: Vector2(0, 0),
        ),
      );
}
