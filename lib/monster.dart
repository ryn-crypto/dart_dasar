import 'package:test_dart/Parent.dart';

// untuk membuat turunan maka kita menggunakan extends 
class Monster extends Character {

  // method eat human hanya dimiliki oleh monster dan tidak dimiliki oleh hero
  String eatHuman() => 'Grrr..... Delecius.. Yummy..';
}
