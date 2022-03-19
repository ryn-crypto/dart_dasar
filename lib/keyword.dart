// untuk membuat keyword static maka kit agunakan 'static'
// ini membuat variabel/method menjadi milik class dan bukan object nya 
// kegunaannya adalah untuk menghemat memory

class Person {
  String name;
  int age;
  static int maxAge = 150;

  Person(this.name, int age) {
    this.age = (age > 150) ? 150 : age;
  }
}
