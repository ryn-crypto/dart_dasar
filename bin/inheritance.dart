import 'package:test_dart/hero.dart';
import 'package:test_dart/monster.dart';
import 'package:test_dart/monster_ubur_kecoa.dart';

// kita bisa memanggil class turunan dengan method yang dimiliki oleh parent nya
void main(List<String> args) {
  // memasukan class kedalam variabel
  Hero h = Hero();
  Monster k = MonsterKecoa();
  Monster u = MonsterUburUbur();

  // melakukan set pada healt point
  h.healtPoint = 0;
  k.healtPoint = 10;
  u.healtPoint = 10;

  print('Hero hp : ' + h.healtPoint.toString());
  print('Monster hp : ' + k.healtPoint.toString());

  // kelas turunan juga bisa memiliki methodnya sendiri
  print('hero kill monster ' + h.killMonster());
  print('monster eat human ' + k.eatHuman());

  // kita juga bisa membuat lis yang berisi kumpulan child monster
  List<Monster> monster = [];

  monster.add(MonsterUburUbur());
  monster.add(MonsterKecoa());
  monster.add(MonsterUcoa());

  // membuat variabel dari class yang sudah didefinisikan
  Knight s = Knight();

  for (Monster m in monster) {
    print(m.move());
    print(m.eatHuman());

    if (m is FlyingMonster) {
      print((m as FlyingMonster).fly());
    }
  }

  print(s.drink());
}

// package lib :  hero, monster, parent
