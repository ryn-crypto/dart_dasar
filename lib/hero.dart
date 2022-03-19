import 'package:test_dart/Parent.dart';

// untuk membuat turunan maka kita menggunakan extends 
class Hero extends Character {
  String killMonster() => 'take this....!!';
}

// saat membuat mixin maka gunakan 'mixin'
// selain itu kita bisa memilih kepada siapa mixin akan diturunkan dengan menggunakan on
mixin DrinkAbility  on Hero {
  String drink() => "gluk gluk gluk..";
}

//  cara menggunakan mixin gunakan with
class Knight extends Hero with DrinkAbility {
  
}
