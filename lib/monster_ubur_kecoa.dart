import 'package:test_dart/monster.dart';

// kita juga bisa membuat abstract class untuk template (interface)
// bukan untuk turunan tapi untuk mengadopsi method yang ada

abstract class FlyingMonster {
  String fly();
}

// turunan monster
class MonsterUburUbur extends Monster {
  String swim() => "woash..... woash....";

  // untuk mendefinisikan method yang sudah di buat di parent maka gunakan override
  @override
  String move() {
    return "Berenang - renang";
  }
}

// turunan monster dan mengimplemantasikan skill yang ada di FlyingMonster
// untuk mengambil method yang ada pada class abstrak gunakan "implement"
class MonsterKecoa extends Monster implements FlyingMonster {
  // karena method pada flyingmonster kosong maka kita harus isi pada class yang mengadopsi sifatnyanya
  @override
  String fly() => "Syunnnngg......";

  // kita juga bisa menggunakan override untuk menimpa method yang ada
  @override
  String eatHuman() {
    return 'sedot ahh...';
  }

  @override
  String move() {
    return "jalan-jalan..";
  }
}

// monster ucua (gabungan ubur-ubur dan kecoa)

class MonsterUcoa extends MonsterUburUbur implements FlyingMonster {
  @override
  String fly() => "wrrrr terbang";
}


// beda extend dan impelement adalah pada jumlah keturunannya 
// jika extend hanya pada satu parent
// jika implement bisa banyak 
