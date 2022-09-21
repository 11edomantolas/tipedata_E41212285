import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  try {
    bool main = true;
    do {
      print("Masukkan nama : ");
      var nama = stdin.readLineSync(encoding: utf8);
      if (nama.toString() == "") {
        throw "Nama harus terisi!";
      }
      print("Pilihan Peran :");
      print("1.Penyihir");
      print("2.Guard");
      print("3.Werewolf");
      print("Masukkan peran ( no.urutan ) : ");
      var peran = stdin.readLineSync(encoding: utf8);
      if (peran.toString() == "") {
        throw "Peran harus dipilih!";
      }
      switch (peran.toString()) {
        case "1":
          print(
              'Selamat datang di Game Werewolf, $nama - Halo penyihir $nama , kamu dapat melihat siapa yang menjadi werewolf!.');
          break;
        case "2":
          print(
              'Selamat datang di Game Werewolf, $nama - Halo guard $nama , kamu akan membantu melindungi temanmu dari serangan werewolf.');
          break;
        case "3":
          print(
              'Selamat datang di Game Werewolf, $nama - Halo werewolf $nama , kamu akan membantu melindungi temanmu dari serangan werewolf.');
          break;
        default:
          throw "$nama , Peran yang kamu pilih tidak tersedia!";
      }
      print("Apakah anda ingin bermain lagi ? (y/n) ");
      var lagi = stdin.readLineSync(encoding: utf8);
      if (lagi != "y") {
        main = false;
        print("Bye!");
      }
    } while (main);
  } catch (e) {
    print(e);
    print("Game gagal dimaikan !");
  }
}
