import 'package:app_litoral/infoHotel.dart';

class Hotel {
  late String nome;
  late String local;
  late String pathimg;
  late InfoHotel infoHotel;
  late List<String> imagens; 

  Hotel(
    this.nome,
    this.local,
    this.pathimg,
    this.infoHotel,
    this.imagens
  );
}