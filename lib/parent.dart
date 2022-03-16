// untuk membuat inheritance kita perlu membuat parent untuk sifat yang akan diturunkan kepadaturunannya

class Character {
  int _healtpoint;

  int get healtPoint => _healtpoint;

  // melakukan validasi saat memasukan value pada variabel
  set healtPoint(int value) {
    if (value < 5) {
      value = 5;
    }
    _healtpoint = value;
  }
}