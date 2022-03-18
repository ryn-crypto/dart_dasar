import 'package:test_dart/Parent.dart';

// untuk membuat turunan maka kita menggunakan extends
// untuk membuat class tidak bisa dipakai untuk objek (hanya untuk parent) maka gunakan abstract
// abstract class tidak perlu melakukan implementasi pada methodyang ada (implemantasi method di tulis dalam class turunan)
abstract class Monster extends Character {
  // method eat human hanya dimiliki oleh monster dan tidak dimiliki oleh hero
  String eatHuman() => 'Grrr..... Delecius.. Yummy..';
  String move();
}
