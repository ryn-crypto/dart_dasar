import 'dart:io';

void main(List<String> args) {
  // object adalah amninfestasi dari class
  PersegiPanjang kotak1, kotak2;
  int luaskotak1, luaskotak2;

  kotak1 = PersegiPanjang();
  kotak1.panjang = 2;
  kotak1.lebar = 4;

  kotak2 = PersegiPanjang();
  kotak2.panjang = 4;
  kotak2.lebar = 6;

  luaskotak1 = kotak1.luas();
  luaskotak2 = kotak2.luas();
  

  print('luas kedua kotak apabila di jumlahkan adalah : $luaskotak1 + $luaskotak2 = ' + (luaskotak1 * luaskotak2).toString());
}

// membuat class
class PersegiPanjang {
  int panjang, lebar;

  int luas() {
    return panjang * lebar;
  }
}
