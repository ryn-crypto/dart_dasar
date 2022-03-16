import 'package:test_dart/hero.dart';
import 'package:test_dart/monster.dart';

// kita bisa memanggil class turunan dengan method yang dimiliki oleh parent nya
void main(List<String> args) {

  // memasukan class kedalam variabel
  Hero h = Hero();
  Monster m = Monster();

  // melakukan set pada healt point
  h.healtPoint = 0;
  m.healtPoint = 10;

  print('Hero hp : ' + h.healtPoint.toString());
  print('Monster hp : ' + m.healtPoint.toString());

  // kelas turunan juga bisa memiliki methodnya sendiri
  print('hero kill monster ' + h.killMonster());
  print('monster eat human ' + m.eatHuman());
}


// package lib :  hero, monster, parent