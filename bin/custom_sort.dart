// custom sort dan for each
// kegunaan sort yaitu untuk menyeleksi/mengurutkan
// foreach untuk mengakses semua element pada array

void main(List<String> args) {
  List<Person> persons = [
    Person('Administrator', 32),
    Person('User', 52),
    Person('Administrator', 20),
    Person('Merchant', 52),
    Person('Administrator', 23),
    Person('User', 22),
    Person('Merchant', 22),
    Person('User', 12),
    Person('Merchant', 55)
  ];

  // custom sort berguna untuk menentukan bagaimana kita ingin melakukan pengurutan data
  // p1 dan p2 akan di bandingkan
  persons.sort((p1, p2) => p1.age - p2.age);

  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });

  print('===========================');
  // jika kita ingin membangdingkan abjad maka gunakan compare
  persons.sort((p1, p2) => p1.role.compareTo(p2.role));

  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });

  print('==============================');
  // atau kita ingin membandingkannya sekaligus
  // kita ingin membuat urutan Merchant, Administrator, User
  persons.sort((p1, p2) {
    if (p1.roleWeight - p2.roleWeight != 0) {
      return p1.roleWeight -p2.roleWeight;
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  // untuk melakukan custom sort maka kita harus menentukan bobot nya terlebih dahulu 
  int get roleWeight {
    switch (role) {
      case 'Merchant':
        return 1;
        break;
      case 'Administrator':
        return 2;
        break;
      default:
        return 3;
    }
  }
}
