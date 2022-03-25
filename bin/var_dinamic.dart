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
  // var
}

class Person {
  String name = 'no name';
}
