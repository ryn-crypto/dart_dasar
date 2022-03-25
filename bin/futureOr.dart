// kegunaan futureOr asalh untuk menentukan type data yang belum jelas akan di kembalikan langsung
// atau butuh proses terlebih dahulu

// implementasi penggunaan

import 'dart:async';

import 'package:test_dart/user.dart';

// cara menggunakannya kurang lebih seperti ini

class UserManager {
  FutureOr<int> GetUserAge(User user) async {
    await IDatastorage.getUserAge(user);
  }
}

abstract class IDatastorage {
  void saveData(User user);
  FutureOr<int> getUserAge(User user);
}
