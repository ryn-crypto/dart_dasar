import 'package:test_dart/user.dart';

class Services {
  Future<User> getUserdata() async {
    // Assuming that we get userdata from database and the return it
    return User();
  }
}

class ServicesSingleton {
  static ServicesSingleton _instance = ServicesSingleton._internal();

  ServicesSingleton._internal();

  factory ServicesSingleton() {
    return _instance;
  }

  Future<User> getUserdata() async {
    // Assuming that we get userdata from database and the return it
    return User();
  }
}
