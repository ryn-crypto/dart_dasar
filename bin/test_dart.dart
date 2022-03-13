import 'dart:io';

void main() {
  print('masukan nomor :');
  int number = int.tryParse(stdin.readLineSync());

  // ============ if else standard ==================
  // if (number > 0) {
  //   print('angka yang anda masukan adalah angka positif');
  // } else if (number < 0) {
  //   print('angka yang anda masukan andalah angka negatif');
  // } else {
  //   print('angka yang anada masukan adalah 0');
  // }

  // ============ simpel if else ===================
  String logic = (number > 0) ? 'positif' : 'negatif atau nol';

  print(logic);
}
