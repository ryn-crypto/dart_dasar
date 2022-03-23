// custom sort dan for each

void main(List<String> args) {
  List<Person> persons = [
    Person('Administrator', 32),
    Person('User', 52),
    Person('Administrator', 21),
    Person('Merchant', 52),
    Person('Administrator', 23),
    Person('User', 22),
    Person('Merchant', 22),
    Person('User', 12),
    Person('Merchant', 55)  
  ];
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);
}
