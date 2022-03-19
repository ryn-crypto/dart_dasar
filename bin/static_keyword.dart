import 'package:test_dart/keyword.dart';

void main(List<String> args) {
  var p = Person('David', 170);

  // kita tidak bisa menggunakan maxAge pada object p tapi bisa mengguanakan nya pada class Person
  print(Person.maxAge);
  print(p.name);
}
