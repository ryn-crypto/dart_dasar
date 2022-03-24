// Operator Overiding
void main(List<String> args) {
  Hero a = Hero(10); // a dan b beda objek sehingga bisa di jumlahkan
  Hero b = Hero(10); // dan jika dibandingkan maka nilainya false

  print((a + b).power);
  print(a == b);
  // jika kita sudah membuat operatornya maka kita bisa menentukan bagaimana prilaku sebuah operator
  print((a + 21).power);
}

class Hero {
  final int power;

  Hero(this.power);

  // mengubah fungsi + pada object hero
  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

  // karena = ada disemua class maka kita harus override
  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (other.power == power) {
        return true;
      }
    }
    return false;
  }
}
