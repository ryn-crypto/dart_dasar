// 1 class hanya bisa dibuat untuk 1 object

import 'package:test_dart/service.dart';

void main(List<String> args) {
  Services services1 = Services();
  Services services2 = Services();

  if (services1 == services2) {
    print('sama');
  } else {
    print('beda');
  }
  // jika seperti ini maka akan menghasilkan object yang berbeda
  // namun setelah kita buat class services singleton maka ia akan mengarah ke object yang sama

  ServicesSingleton service1 = ServicesSingleton();
  ServicesSingleton service2 = ServicesSingleton();
  
  if (service1 == service2) {
    print('sama');
  } else {
    print('beda');
  }
  // dengan begini maka akan menunjuk object yang sama 
}
