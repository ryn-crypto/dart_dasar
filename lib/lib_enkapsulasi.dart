// untuk membuat file menjadi private (enkaspsulasi) maka file dipisah
class PersegiPanjang {
  // gunakan tanda _ (underscore)
  int _panjang, _lebar;

  // untuk memasukan value kedalam variabael private maka menggunakan seter
  void setPanjang(int value) {
    if (value < 0) {
      value *= -1;
    }

    _panjang = value;
  }

  int getPanjang() {
    return _panjang;
  }

  // dalam dart setter dan getter sudah memiliki method sendiri
  // berikut cara membuatnya
  // setter
  void set lebar(int value) {
    if (value < 0) {
      value *= -1;
    }

    _lebar = value;
  }

  // getter
  int get lebar {
    return _lebar;
  }

  int luas() {
    return _panjang * _lebar;
  }
}
