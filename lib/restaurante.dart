import 'package:app_litoral/infoRestaurante.dart';

class Restaurante{
  late String nome;
  late String local;
  late String pathimg;
  late InfoRestaurante infoRestaurante;
   late List<String> imagens; 

  Restaurante(
    this.nome,
    this.local,
    this.pathimg,
    this.infoRestaurante,
    this.imagens
);
}
