void main(List<String> args) {
  print('mengguankan for untuk perulangan');

  for (var i = 0; i < 5; i++) {
    print('ini adalah perulangan ke-$i');
  }

  print('menggunakan while untuk pengulangan');

  int i = 0;
  while (i < 5) {
    print('ini pengualangan ke-$i');
    i++;
  }

  print('mengguakan do while');

  int x = 0;
  do {
    print('ini adalah pengualagan ke -$x');
    x++;
  } while (x < 5);
}
