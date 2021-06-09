import 'dart:math';

class Creature {
  String name;
  int armorClass;
  int hitPoints;
  int hit;
  int damage;

  Creature(this.name, this.armorClass, this.hitPoints, this.hit, this.damage);

  int attack() => d20() + hit;

  int d20() => Random().nextInt(20) + 1;
}