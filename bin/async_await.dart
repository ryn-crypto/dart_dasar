// async pada method menandakan bahwa method menggunakan asyncronus
void main(List<String> args) async {
  var p = Person();

  // jika kita mneggunakan syncronus maka pengerjaan sesuai urutan
  // dan tidak akan mengerjakakn code selanjutnya sebelum code yang dieksekusi selasai
  print('job 1');
  print('job 2');
  // p.getData();
  p.getDataAsync().then((value) => print('job 3 : ' + p.name)); // kita bisa mengguanakn then jika job ingin ditunggu datanya
  // print('job 3 : ' + p.name);
  print('job 4');
}

class Person {
  String name = "default name";

  // ini adalah method biasa (syncronus)
  void getData() {
    name = 'joko'; //misal datanya dari database misal (3 detik)
    print('get data [done]');
  }

  // ini adalah method asyncronus
  // mengguankan future untuk menyatakan bahwa data yang akan di kembalikan bisa saja memerlukan waktu proses
  Future<void> getDataAsync() async {
    // await diginakan untuk menyatakan bahwa method harus ditunggu selama durasi
    // jika tidak menggunakan await maka method bisa saja di tampilkan setelah selesai
    await Future.delayed(Duration(seconds: 3));
    name = 'joko'; //misal datanya dari database misal (3 detik)
    print('get data [done]');
  }
}
