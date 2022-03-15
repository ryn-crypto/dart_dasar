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

  int hitungLuas() {
    return _panjang * _lebar;
  }

  int get luas => _panjang * _lebar;
}


// keguanaan enkapsulasi adalah untuk membungkus dari dunia luar
// jika hanya ingin bisa dilihat saja maka hanya buat get
// jika hanya ingin bisa diset saja maka hanya buat set 