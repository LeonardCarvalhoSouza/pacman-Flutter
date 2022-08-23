import 'package:bonfire/bonfire.dart';
import 'package:pacman/sprites/ponto_sprite_sheet.dart';

var contador = 0;

class Ponto extends SimpleEnemy with ObjectCollision {
  Ponto(Vector2 position)
      : super(
          life: 1,
          size: Vector2(16, 16),
          position: position,
          animation: SimpleDirectionAnimation(
              idleLeft: PontoSpriteSheet.idleLeft,
              idleRight: PontoSpriteSheet.idleRight,
              runLeft: PontoSpriteSheet.idleRunLeft,
              runRight: PontoSpriteSheet.idleRunRight),
        );

  @override
  void die() {
    somaDePontos();
    removeFromParent();
    super.die();
  }

  void somaDePontos() {
    contador = contador + 1;
    return;
  }
}
