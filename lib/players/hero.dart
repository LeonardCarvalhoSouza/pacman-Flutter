import 'package:bonfire/bonfire.dart';
import 'package:pacman/players/especial.dart';
import 'package:pacman/sprites/game_sprite_sheet.dart';

class GameHero extends SimplePlayer with ObjectCollision {
  double dano = 10;
  @override
  void update(double dt) {
    _executeAttack();
    if (contador1 > 0) {
      dano = 1000;
    } else {
      dano = 10;
    }
    super.update(dt);
  }

  GameHero(Vector2 position)
      : super(
          life: 1,
          size: Vector2(16, 16),
          position: position,
          animation: SimpleDirectionAnimation(
            idleLeft: GameSpriteSheet.heroIdleLeft,
            idleRight: GameSpriteSheet.heroIdleRight,
            runLeft: GameSpriteSheet.heroIdleRunRight,
            runRight: GameSpriteSheet.heroIdleRunLeft,
          ),
        ) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(
          size: Vector2(15, 15),
          align: Vector2(0, 0),
        ),
      ]),
    );
  }
  void _executeAttack() {
    simpleAttackMelee(
      damage: dano,
      size: Vector2(10, 10),
    );
  }

  @override
  void die() {
    removeFromParent();
    super.die();
  }
}
