import 'package:bonfire/bonfire.dart';
import 'package:pacman/sprites/especial_sprite_sheet.dart';

var contador1 = 0;

class Especial extends SimpleEnemy with ObjectCollision {
  Especial(Vector2 position)
      : super(
          life: 1,
          size: Vector2(16, 16),
          position: position,
          animation: SimpleDirectionAnimation(
              idleLeft: EspecialSpriteSheet.idleLeft,
              idleRight: EspecialSpriteSheet.idleRight,
              runLeft: EspecialSpriteSheet.idleRunLeft,
              runRight: EspecialSpriteSheet.idleRunRight),
        );
  @override
  void die() {
    somaDeEspecials();
    removeFromParent();
    super.die();
  }

  void somaDeEspecials() {
    contador1 = 1;
    return;
  }

//   @override
//   void update(double dt) {
//     print(contador1);
//     super.update(dt);
//   }
// }
}
