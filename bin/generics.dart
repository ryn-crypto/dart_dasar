// kegunaan generics adalah contoh penggunaan variabel yang tipe datanya sesuai yang di deskripsikan pada saat memanggil

import 'package:test_dart/generics_demo.dart';

void main(List<String> args) {
  // pada saat memanggil methodnya kita bisa deskripsikan langsung
  var box = intScureBox<String>('hallo', "123");
  var datetime = intScureBox<DateTime>(DateTime.now(), "123");

  // tipe data akan mengikuti apa yang kita deskripsikan
  print(box.getData('123').toString());
  print(datetime.getData('123').toString());
}