// final adalah pointer yang menunjuk 1 src yang sama dari awal hingga akhir (tidak bisa di ubah);
// sedangkan const yaitu nilai akan menunjuk objek yang sama jika di deklarasikan lagi dan tidak bisa dirubah
// const hanya bisa di deklarasikan pada top level dan hanya bisa dijadikan static dan variabel local

void main(List<String> args) {
  var a = const ConstClass(number: 5);
  var b = const ConstClass(number: 5);

  // cek indetik atau tidak
  // jika variabel mengguankan const maka identik namun jika menggunakan final maka object akan di buat ulang 
  print(identical(a, b));
}

class RegularClass {
  final int number;

  RegularClass({this.number});
}

class ConstClass {
  final int number;

  const ConstClass({this.number});
}
