import 'dart:io';

void main(List<String> args) {
  // menjalankan funsi dasar
  print('============ fungsi dasar =============');
  print('masukan nilai untuk panjang');
  int panjang = int.tryParse(stdin.readLineSync());
  print('masukan nilai untuk lebar');
  int lebar = int.tryParse(stdin.readLineSync());
  int luas = luasSegiEmpat(panjang, lebar);
  print(
      'luas dari bangunan dengan panjang $panjang dan lebar $lebar luasnya adalah $luas');

  // menjalankan funsi dengan parameter bernama
  print('========= fungsi dengan parameter bernama ==========');

  print(say(from: 'riyan', message: 'apa_kabar'));

  // menjalankan funsi dengan optional parameter
  print('========= fungsi dengan optional parameter ========');
  print(sapa('riyan'));
  print(sapa('andi', 'hai apa kabar?'));

  // menjalankan funsi dengan parameter default value
  print('======= fungsi dengan parameter default value ====');
  print(salam('riyan'));
  print(salam('budi', 'hallo lagi sibuk apa ?'));

  // menjalankan function arrow
  print(luasKubus(45));

  // memasukan function kedalam variable
  Function lk = luasKubus;
  print(lk(45));

  // menggunakan function untuk parameter
  print(pp(3, 4, (a, b) => a * b));

}

// ---------------- pembuatan funsi -------------------------
// fungsi dasar
int luasSegiEmpat(int panjang, int lebar) {
  return (panjang * lebar);
}

// fungsi dengan parameter bernama (named parameter) menggunakan {} saat penuliskan parameter
String say({String from, String message}) {
  return ('$from say $message');
}

// fungsi dengan parameter optional menggunakan [] pada parameter
String sapa(String nama, [String pesan]) {
  return ('$nama menyapamu dengan kalimat $pesan');
}

// fungsi dengan default parameter menggunakan = pada parameter untuk mengisikan default value
String salam(String name, [String salam = 'Assalamualaikum']) {
  return ('$name mengucapkan $salam');
}

// arrow function / lambda
int luasKubus(int sisi) => sisi * sisi;

// function sebagai operator
int pp(int panjang, int lebar, Function operator) {
  return operator(panjang, lebar);
}