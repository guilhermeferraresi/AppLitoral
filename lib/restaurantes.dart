import 'package:app_litoral/infoRestaurante.dart';
import 'package:flutter/material.dart';
import 'restaurante.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia Litoral SP',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RestauranteScreen(),
    );
  }
}

class RestauranteScreen extends StatelessWidget {
  RestauranteScreen({super.key});

  final List<Restaurante> restaurantes = [
    Restaurante("Quintal da Villa", 
    "Ubatuba", 
    "img/QuintalDaVilla.jpg",
    InfoRestaurante("","","","","","",""
    ),
    []
    ),
    Restaurante("Almada Bar", 
    "Ubatuba", 
    "img/Almada.jpg",
     InfoRestaurante("","","","","","",""
    ),
    []
    ),
    Restaurante("Portofino", 
    "Ilhabela", 
    "img/Portofino.jpg",
     InfoRestaurante("","","","","","",""
    ),
    []
    ),
    Restaurante("Bens Bar & Comidaria", 
    "Ilhabela", 
    "img/Bens.jpg",
     InfoRestaurante("","","","","","",""
    ),
    []
    ),
    Restaurante("Jirêh Bar e Cozinha Prática", 
    "São Pedro", 
    "img/Jirêh.jpg",
     InfoRestaurante("","","","","","",""
    ),
    []
    ),
    Restaurante("Restaurante Capitano", 
    "Ilhabela", 
    "img/Capitano.jpeg",
     InfoRestaurante("","","","","","",""
    ),
    []
    ),
    Restaurante("Alcides Restaurante", 
    "Guarujá", 
    "img/Alcides Restaurante.jpg",
     InfoRestaurante("","","","","","",""
    ),
    []
    ),
    Restaurante("Les Épices", 
    "Guarujá", 
    "img/Les Épices.jpg",
     InfoRestaurante("","","","","","",""
    ),
    []
    ),
    Restaurante("Costazul Seafood", 
    "Santos", 
    "img/COSTAZUL.jpg",
     InfoRestaurante(
                        "Av. Senador Pinheiro Machado, 763, Santos, Estado de São Paulo Brasil",
                        "📞 12 3042-0767",
                        "costazulseafood.santos",
                        """
                        - Entrega, 
                        - Para levar, 
                        - Reservas, 
                        - Mesas ao ar livre, 
                        - Lugares para sentar, 
                        - Estacionamento na rua, 
                        - Estacionamento privado grátis, 
                        - Acesso para cadeirantes, 
                        - Serve bebida alcoólica, 
                        - Bar completo
                        - Aceita American Express,MasterCard,Visa
                        - Pagamento digital, 
                        - Wi-fi gratuito 
                        - Serviço de mesa
                        - Balcão externo
                        - Permite cães""",
                        """
                        Segunda-Feira Fechado
                        Terça-Feira   Fechado
                        Quarta-Feira  18H - 23H
                        Quinta-Feira  18H - 23H
                        Sexta-Feira   12H - 16:30H/ 18H - 23H
                        Sábado        12H - 16:30H/ 18H - 23H
                        Domingo       12H - 18H""",
                        """ 
                        COZINHAS
                          Peruana, Frutos do Mar
                        REFEIÇÕES
                          Almoço e Jantar""",
                        "O chef do restaurante é o peruano Carlos Moscol Paredes, que já ganhou diversos prêmios de gastronomia com seu restaurante em Lima, no Peru. O estabelecimento também possui uma variedade grande no cardápio, mostrando parte da gastronomia peruana.",
                      ),
                          [
                        'img/COSTAZUL.jpg',
                        'img/Costazul1.jpg',
                        'img/Costazul2.jpg'
                      ]
                      ),
                    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Guia Litoral SP',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF2CCD9D),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Digite o que está procurando',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: restaurantes.length,
                itemBuilder: (context, index) {
                  final restaurante = restaurantes[index];
                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          restaurante.pathimg,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                restaurante.nome,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                restaurante.local,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text("1"),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text("2"),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text("3"),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "...",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text("10"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const FooterWidget(),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2CCD9D),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Política de privacidade',
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontSize: 10),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Termos de Uso',
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontSize: 10),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Ajuda',
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.facebook),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.email),
                onPressed: () {},
              ),
            ],
          ),
          const Text('@Copyright'),
        ],
      ),
    );
  }
}
