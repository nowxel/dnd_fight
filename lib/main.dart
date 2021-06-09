import 'package:dnd_fight/creature.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      home: Container(),
    ),
  );
  Creature goblin = Creature("Goblin", 15, 7, 4, 5);
  Creature player = Creature("Brallelin Rumnaheim", 16, 13, 5, 7);

  int goblinAttack = goblin.attack();
  print("${goblin.name} attacks $goblinAttack to hit");
  if (goblinAttack >= player.armorClass) {
    int goblinDamage = goblin.damage;
    print("attack makes $goblinDamage damage");
    player.hitPoints -= goblinDamage;
    if (player.hitPoints > 0) {
      print("${player.name} has ${player.hitPoints} HP left");
    } else {
      print("${player.name} is dead, ${goblin.name} wins");
    }
  } else {
    print("attack misses");
  }
}
