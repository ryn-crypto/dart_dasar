// Required, Assert, Try Catch
// untuk menggunakan required maka kita harus mnginport meta.dart
import 'dart:ffi';

import 'package:meta/meta.dart';

void main(List<String> args) {
  Person p;

  // penggunaan try catch adalah untuk melakukan pengecekan pada kondisi, dan apabila error maka program masih bisa melanjutkan eksekusinya
  try {
    p = Person(name: null);
  } catch (e) {
    print(e);
  }

  print('hello word');
  print(p.name);
}

class Person {
  final String name;
  final int age;

  // penggunaan required adalah dengan menuliskannya di depan variabel yang akan diwajibkan diisi
  Person({@required this.name, this.age = 0}) {
    // penggunaan assert untuk menegaskan bahwa variabel harus diisi selain null
    assert(name != null, "You must give the person's name");
  }
}
