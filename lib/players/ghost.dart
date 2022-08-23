import 'package:bonfire/bonfire.dart';
import 'package:pacman/sprites/ghost_sprite_sheet.dart';
import 'package:pacman/main.dart';

import 'especial.dart';

class Ghost extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  double dano = 1000;
  @override
  void updateTree(double dt) {
    runRandomMovement(
      dt,
    );
    super.updateTree(dt);
  }

  @override
  Ghost(Vector2 position)
      : super(
          life: 100,
          size: Vector2(16, 16),
          position: position,
          animation: SimpleDirectionAnimation(
              idleLeft: GhostSpriteSheet.idleLeft,
              idleRight: GhostSpriteSheet.idleRight,
              runLeft: GhostSpriteSheet.idleRunLeft,
              runRight: GhostSpriteSheet.idleRunRight),
        ) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(
          size: Vector2(10, 10),
          align: Vector2(0, 0),
        ),
      ]),
    );
  }
  @override
  void update(double dt) {
    _executeAttack();
    seeAndMoveToPlayer(
      closePlayer: (player) {},
      radiusVision: tileSize * 2.5,
    );
    if (contador1 > 0) {
      dano = 0;
    } else {
      dano = 1000;
    }

    super.update(dt);
  }

  @override
  void die() {
    removeFromParent();
    super.die();
  }

  void _executeAttack() {
    simpleAttackMelee(
      size: Vector2(10, 10),
      damage: dano,
    );
  }
}
