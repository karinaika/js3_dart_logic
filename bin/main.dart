import 'dart:io';

void main() {
  print("Program Dart");
  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);

  print("Anda memasukkan angka: $angka");
}
