// menggunakan untuk constructor

class Person {
  String name;

  // kita juga bisa membuat contructor untuk mengedit isinya
  // condtructor juga bisa memiliki argument/parameter
  Person({String name = 'no name'}) {
    // this.name menunjuk name pada class sedangkan name menunjuk pada parameter constructor
    this.name = name;
  }
}
