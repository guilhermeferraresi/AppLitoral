import 'package:app_litoral/catalina.dart';
import 'package:app_litoral/infoPasseio.dart';
import 'package:app_litoral/infoRestaurante.dart';
import 'package:app_litoral/oquefazer.dart';
import 'package:app_litoral/pele.dart';
import 'package:app_litoral/restaurante.dart';
import 'package:app_litoral/restaurantes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'hotel.dart';
import 'package:flutter/material.dart';
import 'costazul.dart';
import 'infoHotel.dart';

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
      home: HomeScreen(),
      routes: {
        '/roteiropele': (context) => const PeleScreen(),
        '/restaurantes': (context) => RestauranteScreen(),
        '/catalina': (context) => const CatalinaScreen(),
        '/costazul': (context) => const CostazulScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Hotel> hotel = [
    Hotel(
    'DPNY Beach Hotel & SPA', 
    'Ilhabela', 
    'img/DPNY.jpg',
    InfoHotel("","","","","",""
    ),
    []
    ),
      Hotel(
    'Catalina Hotel',
    'Ubatuba',
    'img/Catalina.jpg',
    InfoHotel(
      "Av. Senador Pinheiro Machado, 763, Santos, Estado de São Paulo Brasil",
      "📞 12 3042-0767",
      "catalina.hotel",
      """
      - Estacionamento gratuito
      - Internet sem fio gratuita e de alta velocidade (Wi-Fi)
      - Piscina    Aulas de ioga
      - Aulas de ioga
      - Café da manhã gratuito
      - Praia
      - Passeio de barco
      - Traslado de/para o aeroporto
      - Toalhas de piscina/praia
      - Piscina externa
      - Piscina aquecida
      - Piscina privativa
      - Bar/lounge
      - Restaurante
      - Café da manhã disponíve
      - Café da manhã no quarto
      - Drinque gratuito de boas-vindas
      - Espaço para refeições ao ar livre
      - Lanchonete
      - Bar na piscina
      - Bar no terraço
      - Salas de reunião
      - Área externa mobiliada
      - Recepção 24 horas""",
      """
      Vista para o mar
      Quartos para não fumantes""",
      """ 
      - Purificador de ar
      - Roupões
      - Ar-condicionado
      - Serviço de limpeza
      - Cafeteira/chaleira
      - TV a cabo/por satélite
      - Sofá-cama
      - Bidê
      - Cofre
      - Armário/closet
      - TV de tela plana
      - Chuveiro acessível
      - Banheira/chuveiro
      - Artigos de higiene pessoal de cortesia
      - Secador de cabelo""",
    ),
    [
      'img/Catalina1.jpg',
      'img/Catalina2.jpg',
      'img/Catalina3.jpg',
      'img/Catalina4.jpg',
      'img/Catalina5.jpg'
    ]
  ),
    Hotel(
    'Maui Maresias',
    'São Sebastião', 
    'img/Maui.jpg',
    InfoHotel("","","","","",""
    ),
    []
    ),
  ];

  final List<Restaurante> restaurante = [
    Restaurante(
    'Alcides Restaurante', 
    'Guarujá', 
    'img/Alcides Restaurante.jpg',
     InfoRestaurante("","","","","","",""
     ),
     []
     ),
    Restaurante(
    'Costazul Seafood', 
    'Santos', 
    'img/COSTAZUL.jpg', 
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
    Restaurante(
    'Jirêh Bar e Cozinha Prática', 
    'Ilhabela', 
    'img/Jirêh.jpg',
    InfoRestaurante("","","","","","",""
    ),
    []
    ),
  ];

  final List<OQueFazer> oquefazer = [
    OQueFazer(
    'Tour Privativo do Pelé: O Rei do Futebol', 
    'Santos', 
    'img/RoteiroPelé.jpg',
      InfoPasseio(
      "Conheça a história do Rei do Futebol. Para começar iremos para a Vila Belmiro, lá encontra-se o Estádio Urbano Caldeira, onde visitaremos o Memorial das Conquistas do Santos F. .Faremos um tour completo, com visita a sala de troféus, sala de imprensa, vestiários e gramado. Passaremos pelo Centro de Treinamento Rei Pelé e iremos para o Museu Pelé. Uma passadinha no Monumento ao Camisa 10. Em seguida, iremos ao Memorial Necrópole Ecumêmica. Depois,um tour panorâmico na orla da praia e uma parada na famosa Padoca Santista, onde torcedores e ex-jogadores costumam se encontrar para ver os jogos do Peixe. Em frente, você poderá ver a estátua de Pelé dando um soco no ar. Para finalizar, iremos até o Santos Convention Center para ver o mural do artista Eduardo Kobra que entre cenas santistas mostra o Pelé vestindo a camisa da seleção brasileira e com Santos escrito no seu peito.",
      "📞 13 997719829",
      "Site ",
      """
      9:00 : Encontro no hotel Novotel Santos Gonzaga
      9:45 : Chegada ao Memorial das Conquistas
      10:50 : Museu Pelé
      11:50 : Monumento ao Camisa 10
      12:20 : Memorial Necrópole Ecumênica
      13:00 : Padoca Santista
      13:30 : Mural de Eduardo Kobra
      14:30 : Hotel Novotel
      """,
      "Transporte, guia de turismo e ingressos para o Museu do Pelé e o Memorial das Conquistas do Santos F.C",
      "A realização deste passeio está condicionada a um número mínimo de inscritos. No caso de não ocorrer, os participantes poderão optar por participar de outro passeio ou terem os valores ressarcidos integralmente.A programação pode ser alterada devido a questões operacionais. As inscrições devem ser realizadas previamente.",
    ),
    [
        'img/Pele1.jpg',
        'img/Pele2.jpg',
        'img/Pele3.jpg',
        'img/Pele4.jpg',
        'img/Pele5.jpeg' 
      ]
    ),
    OQueFazer(
      'Batismo de Mergulho', 
      'Ilhabela', 
      'img/MergulhoIlhaBela .png',
     InfoPasseio("","","","","","",
     ),
     []
     ),
    OQueFazer('Rapel em Paúba', 
    'São Sebastião', 
    'img/RapelPauba (1).png',
    InfoPasseio("","","","","",""
     ),
     [],
     ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Guia Litoral SP',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/PaginaInicial (1).jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 65,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8), 
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Digite o que está procurando',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                      
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            SectionCarouselWidget(
              title: 'Hotéis',
              items: hotel.map((h) => {
                'imagem': h.pathimg,
                'nome': h.nome,
                'localizacao': h.local
              }).toList(),
            ),
            SectionCarouselWidget(
              title: 'Restaurantes', 
              items: restaurante.map((r) => {
                'imagem': r.pathimg,
                'nome': r.nome,
                'localizacao': r.local
              }).toList(),
            ),
            SectionCarouselWidget(
              title: 'O que fazer',
              items: oquefazer.map((x) => {
                'imagem': x.pathimg,
                'nome': x.nomePasseio,
                'localizacao': x.local
              }).toList(),
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}

class SectionCarouselWidget extends StatefulWidget {
  final String title;
  final List<Map<String, String>> items;

  const SectionCarouselWidget({super.key, required this.title, required this.items});

  @override
  SectionCarouselWidgetState createState() => SectionCarouselWidgetState();
}

class SectionCarouselWidgetState extends State<SectionCarouselWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              if (widget.title == 'Restaurantes') {
                Navigator.pushNamed(context, '/restaurantes');
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                widget.title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 270.0, 
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: widget.items.map((item) {
              return GestureDetector(
                onTap: () {
                  if (item["nome"] == "Tour Privativo do Pelé: O Rei do Futebol") {
                      Navigator.pushNamed(
                        context, 
                        "/roteiropele",
                        arguments: 
                          OQueFazer(
                            'Tour Privativo do Pelé: O Rei do Futebol', 
                            'Santos', 
                            'img/RoteiroPelé.jpg',
                              InfoPasseio(
                              "Conheça a história do Rei do Futebol. Para começar iremos para a Vila Belmiro, lá encontra-se o Estádio Urbano Caldeira, onde visitaremos o Memorial das Conquistas do Santos F. .Faremos um tour completo, com visita a sala de troféus, sala de imprensa, vestiários e gramado. Passaremos pelo Centro de Treinamento Rei Pelé e iremos para o Museu Pelé. Uma passadinha no Monumento ao Camisa 10. Em seguida, iremos ao Memorial Necrópole Ecumêmica. Depois,um tour panorâmico na orla da praia e uma parada na famosa Padoca Santista, onde torcedores e ex-jogadores costumam se encontrar para ver os jogos do Peixe. Em frente, você poderá ver a estátua de Pelé dando um soco no ar. Para finalizar, iremos até o Santos Convention Center para ver o mural do artista Eduardo Kobra que entre cenas santistas mostra o Pelé vestindo a camisa da seleção brasileira e com Santos escrito no seu peito.",
                              "📞 13 997719829",
                              "Site ",
                              """
                              9:00 : Encontro no hotel Novotel Santos Gonzaga
                              9:45 : Chegada ao Memorial das Conquistas
                              10:50 : Museu Pelé
                              11:50 : Monumento ao Camisa 10
                              12:20 : Memorial Necrópole Ecumênica
                              13:00 : Padoca Santista
                              13:30 : Mural de Eduardo Kobra
                              14:30 : Hotel Novotel
                              """,
                              "Transporte, guia de turismo e ingressos para o Museu do Pelé e o Memorial das Conquistas do Santos F.C",
                              "A realização deste passeio está condicionada a um número mínimo de inscritos. No caso de não ocorrer, os participantes poderão optar por participar de outro passeio ou terem os valores ressarcidos integralmente.A programação pode ser alterada devido a questões operacionais. As inscrições devem ser realizadas previamente.",
                            
                            ),
                                                [
                            'img/Pele1.jpg',
                            'img/Pele2.jpg',
                            'img/Pele3.jpg',
                            'img/Pele4.jpg',
                            'img/Pele5.jpeg', 
                          ]
                            ),
                            );
                  } else if (item["nome"] == "Catalina Hotel") {
                    Navigator.pushNamed(
                       context,
                      '/catalina',
                      arguments: 
                      Hotel(
                        'Catalina Hotel',
                        'Ubatuba',
                        'img/Catalina.jpg', 
                        InfoHotel(
                        "Av. Senador Pinheiro Machado, 763, Santos, Estado de São Paulo Brasil",
                        "📞 12 3042-0767",
                        "catalina.hotel",
                        """
                        - Estacionamento gratuito
                        - Internet sem fio gratuita e de alta velocidade (Wi-Fi)
                        - Piscina    Aulas de ioga
                        - Aulas de ioga
                        - Café da manhã gratuito
                        - Praia
                        - Passeio de barco
                        - Traslado de/para o aeroporto
                        - Toalhas de piscina/praia
                        - Piscina externa
                        - Piscina aquecida
                        - Piscina privativa
                        - Bar/lounge
                        - Restaurante
                        - Café da manhã disponíve
                        - Café da manhã no quarto
                        - Drinque gratuito de boas-vindas
                        - Espaço para refeições ao ar livre
                        - Lanchonete
                        - Bar na piscina
                        - Bar no terraço
                        - Salas de reunião
                        - Área externa mobiliada
                        - Recepção 24 horas""",
                        """
                        Vista para o mar
                        Quartos para não fumantes""",
                        """ 
                        - Purificador de ar
                        - Roupões
                        - Ar-condicionado
                        - Serviço de limpeza
                        - Cafeteira/chaleira
                        - TV a cabo/por satélite
                        - Sofá-cama
                        - Bidê
                        - Cofre
                        - Armário/closet
                        - TV de tela plana
                        - Chuveiro acessível
                        - Banheira/chuveiro
                        - Artigos de higiene pessoal de cortesia
                        - Secador de cabelo""",
                      ),
                          [
                            'img/Catalina1.jpg',
                            'img/Catalina2.jpg',
                            'img/Catalina3.jpg',
                            'img/Catalina4.jpg',
                            'img/Catalina5.jpg'
                          ]
                      ),
                   );
                }else if (item["nome"] == "Costazul Seafood") {
                    Navigator.pushNamed( 
                      context, 
                      "/costazul", 
                      arguments:  
                      Restaurante(
                      'Costazul Seafood', 
                      'Santos', 
                      'img/COSTAZUL.jpg', 
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
                    );
                }
              },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 185, 
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(item['imagem']!),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      item['nome']!,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(item['localizacao']!),
                  ],
                ),
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.items.map((url) {
              int index = widget.items.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                      : const Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Política de privacidade',
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline, fontSize: 10),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Termos de Uso',
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline, fontSize: 10),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Ajuda',
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline, fontSize: 10),
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


