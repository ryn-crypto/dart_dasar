// cascade & ennum
//cascade bisa melakukan penyingkatan perintah

void main(List<String> args) {
  // cara menggunakan cascade yaitu dangan (..)
  MonsterUcoa m = MonsterUcoa(status: ucoaStatus.confused);
  print('Monster Ucoa has');
  m
    ..move()
    ..eat();
}

// kegunaan enum adalah untuk menampung pilihan
enum ucoaStatus { normal, poisoned, confused }

class MonsterUcoa {
  final ucoaStatus status; // 1. Normal, 2. Poisoned, 3. Comfused

  MonsterUcoa({this.status = ucoaStatus.normal});

  void move() {
    switch (status) {
      case ucoaStatus.normal:
        print('ucoa is moving... ');
        break;
      case ucoaStatus.poisoned:
        print('ucoa cannot moving, ucoa is dying. ucoa needs help...');
        break;
      default:
        print('ucoa is spinning, dart language is confusing...');
    }
  }

  void eat() {
    print('Ucoa is eating supermie....');
  }
}
