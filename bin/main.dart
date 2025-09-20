import 'dart:io';

void main() {
  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);

  // Faktorial
  int faktorial = 1;
  for (int i = 1; i <= angka; i++) {
    faktorial *= i;
  }
  print("Faktorial dari $angka adalah $faktorial");

  // Prima
  bool prima = true;
  if (angka < 2) {
    prima = false;
  } else {
    for (int i = 2; i <= angka ~/ 2; i++) {
      if (angka % i == 0) {
        prima = false;
        break;
      }
    }
  }

  print(prima ? "$angka adalah bilangan prima" : "$angka bukan bilangan prima");
}
