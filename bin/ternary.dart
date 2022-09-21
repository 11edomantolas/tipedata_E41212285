import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  print("Apakah kamu galau? (y/n)");
  var galau = stdin.readLineSync(encoding: utf8);
  galau == 'y' ? print("Mari kita ngopi!") : print("Lebih baik dirumah saja");
}
