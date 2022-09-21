import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  print("Masukan angka:");
  int angka = int.parse(stdin.readLineSync(encoding: utf8).toString());
  print("Lopping Pertama");
  for (int i = 1; i <= angka; i++) {
    print("$i Aku cinta Coding");
  }
  print("Lopping Kedua");
  for (int i = angka; i >= 1; i--) {
    print("$i Aku akan menjadi pro developer");
  }
}
