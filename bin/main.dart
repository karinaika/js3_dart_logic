import 'dart:io';

void main() {
  print("====================================");
  print("        Menu Program Dart");
  print("====================================");
  print("1. Hitung Faktorial");
  print("2. Cek Bilangan Prima");
  print("3. Cek Deret Bilangan Genap");
  print("4. Keluar");
  print("====================================");

  stdout.write("Pilih menu (1-4): ");
  int pilihan = int.parse(stdin.readLineSync()!);

  switch (pilihan) {
    case 1:
      // Hitung Faktorial
      stdout.write("Masukkan angka: ");
      int n = int.parse(stdin.readLineSync()!);
      int hasil = 1;

      for (int i = 1; i <= n; i++) {
        hasil *= i;
      }

      print("Faktorial dari $n adalah $hasil");
      break;

    case 2:
      // Cek Bilangan Prima
      stdout.write("Masukkan angka: ");
      int n = int.parse(stdin.readLineSync()!);
      bool prima = true;

      if (n < 2) {
        prima = false;
      } else {
        for (int i = 2; i <= n ~/ 2; i++) {
          if (n % i == 0) {
            prima = false;
            break;
          }
        }
      }

      print(prima? "$n adalah bilangan prima" : "$n bukan bilangan prima");
      break;

    case 3:
      // Cetak Deret Bilangan Genap
      stdout.write("Masukkan batas: ");
      int n = int.parse(stdin.readLineSync()!);

      print("Deret bilangan genap hingga $n:");
      for (int i = 2; i <= n; i += 2) {
        stdout.write("$i ");
      }
      print(""); // untuk pindah baris
      break;

    case 4:
      // Keluar dari program
      print("Terima kasih, program selesai.");
      break;

    default:
      print("Pilihan tidak valid!");
  }
}