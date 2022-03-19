// constructor tidak memeiliki tipe kembalian
import 'package:test_dart/person.dart';

void main(List<String> args) {

  // Person() adalah constructor dari class Person
  // jika tidak di buat maka defautnya dart hanya membuatnya menjadi object
  // saat membuat object maka constructor akan dijalankan
  Person p = Person(name: 'Joko');

  print(p.name);

  
}
