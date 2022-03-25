void main(List<String> args) {
  // kegunaan dinamic yaitu untuk membuat object tipe apapun
  dynamic myDynamic;

  myDynamic = 12;
  print(myDynamic);
  myDynamic = 'hello word';
  print(myDynamic);
  myDynamic = Person();
  // karena dynamic tidak bisa mendeteksi type data maka dia tidak bisa namampilkan sugest method
  // dan jika tipe data tidak sesauai maka bisa menyebabkan error
  // untuk memastikan kita perlu melakukan pengecekan menggunakan is
  if (myDynamic is Person) {
    print(myDynamic.name);
  }

  //  ============================================================================================
  // var berfungsi untuk membuat object bertipe apa saja di awal, dan setealahnya tidak bisa di ubah type

  var myVar = 12;
  print(myVar);
  // myVar = 'welcome';  <--- jika dirubah typenya maka akan error
  myVar = 40; //  bisa di isi dengan type yang sama
  print(myVar);

  // namun jika tidak di deklarasikan langsung maka type data akan menjadi dynamic
  var myvariabel;

  myvariabel = 12;
  myvariabel = 'nama saya';
  // myvariabel akan berubah menjadi type data dynamic
}

class Person {
  String name = 'no name';
}
