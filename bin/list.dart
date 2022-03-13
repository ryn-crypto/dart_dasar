void main(List<String> args) {
  // cara membuat list
  List<int> mylist = [1, 2, 3, 4, 5];

  // cara mengakses list
  int i = mylist[0];
  print(i);

  // mengganti value list menggunakan index
  mylist[0] = 10;
  print(mylist);

  // cara menambah anggota list
  mylist.add(7);
  print(mylist);

  // menambahkan anggota list dengan list
  List<int> add = [9, 8, 7, 6, 5];
  mylist.addAll(add);
  print(mylist);

  // menyisipkan anggota ke tengah list
  mylist.insert(3, 40);
  print(mylist);

  // menyisipkan list ke tengah list
  mylist.insertAll(5, [3, 5, 8]);
  print(mylist);

  // mengahpus anggota list
  // -- jika dalam list terdapat angka yang sama maka yang terhapus adalah yang pertama
  mylist.remove(5);
  print(mylist);

  // menghapus anggota list yang terahir
  mylist.removeLast();
  print(mylist);

  // mengapus anggota list dengan menggunakan indeks
  mylist.removeAt(5);
  print(mylist);

  // menghapus anggota list dengan jangkauan indeks
  mylist.removeRange(3, 5);
  print(mylist);

  // menghapus anggota list dengan mengguakan kondisi
  mylist.removeWhere((element) => element % 2 != 0);
  print(mylist);

  // mengguanakan for in untuk mengakses anggota list
  for (var item in mylist) {
    print(item);
  }

  // menggunakan foreach untuk mengakses anggota list
  mylist.forEach((element) {
    print(element);
  });

  // menggecek isi list
  if (mylist.contains(6)) {
    print('ada 6 dalam list');
  }

  // mengambil sebagian dari list
  List<int> list = mylist.sublist(2);
  print(list);

  // mengosongkan isi list
  list.clear();
  print(list);

  // melakukan sorting
  // ---- bisa mengguankan fungsi untuk melakukan sort
  mylist.sort();
  print(mylist);
  mylist.sort((a, b) => b - a);
  print(mylist);

  // melakukan pengecekan kedalam list
  if (mylist.every((element) => element % 2 == 0)) {
    print('semua anggota list genap');
  } else {
    print('tidak semua anggota genap');
  }

  // melakukan pengecekan anggota list apakah kosong atau tidak
  // -- "isempty" atau mengguanakn "isnotempty"
  if (mylist.isNotEmpty) {
    print('list tidak kosong');
  }

  // mengubah list menjadi set
  // --- set adalah list dengan anggota yang tidak boleh sama "{}"
  var set = mylist.toSet();
  print(set);

  // maping list
  // --- harus di conversi ke list dengan => toList() 
  List<String> data = [];

  data =  mylist.map((e) => 'angka $e').toList();
  print(data);
}
