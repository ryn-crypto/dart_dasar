// melakukan inport kepada file yang akan di private
import 'package:test_dart/lib_enkapsulasi.dart';

// menjalankan file yang di private
void main(List<String> args) {
  PersegiPanjang kotak1, kotak2;
  int luaskotak1, luaskotak2;

  // untuk mengakses variabel _panjang maka menggunakan geter dan setter
  // penggunaan setter dan getter method bawaan dart lebih mudah (contoh di : lebar)
  kotak1 = PersegiPanjang();
  kotak1.setPanjang(-3);
  kotak1.lebar = -44;

  kotak2 = PersegiPanjang();
  kotak2.setPanjang(4);
  kotak2.lebar = 6;

  luaskotak1 = kotak1.luas;
  luaskotak2 = kotak2.luas;

  // untuk mengambil data yang sudah kita set maka menggunakan geter
  print('panjang kotak ke-1 adalah ' + (kotak1.getPanjang().toString()) + 'cm dan lebarnya adalah ' + (kotak1.lebar).toString() + 'cm');
  print('panjang kotak ke-2 adalah ' + (kotak2.getPanjang().toString()) + 'cm dan lebarnya adalah ' + (kotak2.lebar).toString() + 'cm');
  print('luas kedua kotak apabila di jumlahkan adalah : $luaskotak1 + $luaskotak2 = ' + (luaskotak1 * luaskotak2).toString());
}
