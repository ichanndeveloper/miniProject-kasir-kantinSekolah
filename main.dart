import 'dart:io';

void main() {
  List<String> nmBarang = [];
  List<int> hrgBarang = [];

  nmBarang.add("tahu telor");
  hrgBarang.add(8000);
  nmBarang.add("ayam geprek");
  hrgBarang.add(6000);
  nmBarang.add("soto ayam");
  hrgBarang.add(7000);
  nmBarang.add("bakso");
  hrgBarang.add(5000);

  print("KANTIN SMK 11");
  print("JL. KETAPANG");
  print("============================");
  print("No  Nama Barang        Harga");
  print("----------------------------");

  for (int i = 0; i < nmBarang.length; i++) {
    print("${i + 1}.  ${nmBarang[i]}      Rp ${hrgBarang[i]}");
  }

  print("============================");
  print("Mau beli yang mana?");
  int noPilih = int.parse(stdin.readLineSync()!);

  print("Mau beli berapa bungkus?");
  int jumlah = int.parse(stdin.readLineSync()!);

  int index = noPilih - 1;
  int total = hrgBarang[index] * jumlah;

  print("\n============================");
  print("Total Bayar: Rp $total");

  print("Uang Dibayar: Rp");
  int bayar = int.parse(stdin.readLineSync()!);

  int kembalian = bayar - total;

  print("----------------------------");
  print("Kembalian : Rp $kembalian");
  print("============================");
  print("Terima Kasih");
}
