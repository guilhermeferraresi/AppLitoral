import 'package:app_litoral/hotel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MaterialApp(
    home: CatalinaScreen(),
  ));
}

class CatalinaScreen extends StatefulWidget {
  const CatalinaScreen({super.key});

  @override
  _CatalinaScreenState createState() => _CatalinaScreenState();
}

class _CatalinaScreenState extends State<CatalinaScreen> {


  Future<void> _launchURL(String instagramUsername) async {
    final Uri url = Uri.parse('https://www.instagram.com/catalina.hotel/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  
  @override
  Widget build(BuildContext context) {
     final hotel = ModalRoute.of(context)!.settings.arguments as Hotel;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          hotel.nome,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,  
                children: [
                  Text(
                    hotel.nome, 
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    hotel.infoHotel.telefone, 
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
             CarouselSlider(
              options: CarouselOptions(
                height: 320.0,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
              ),
              items: hotel.imagens.map((imagem) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagem),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        "Contato e Endereço",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,  
                        children: [
                          Text(
                            hotel.infoHotel.endereco,
                            style: const TextStyle(fontSize: 16),
                          ),
                          Text(
                            hotel.infoHotel.telefone,
                            style: const TextStyle(fontSize: 16),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'img/instagram.png',  
                                width: 24,  
                                height: 24,
                              ),
                              const SizedBox(width: 8),  
                              GestureDetector(
                                onTap: () {
                                  _launchURL('https://www.instagram.com/catalina.hotel/');
                                },
                                child: Text(
                                  hotel.infoHotel.instagram,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ExpansionTile(
                      title: const Text(
                        "Serviços do Hotel",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,  
                            child: Text(
                              hotel.infoHotel.servicosHotel,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: const Text(
                        "Tipos de Quartos",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,  
                            child: Text(
                              hotel.infoHotel.tiposQuartos,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: const Text(
                        "Comodidades do Quarto",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,  
                            child: Text(
                              hotel.infoHotel.comodidadesQuarto,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ),
            const SizedBox(height: 16.0),
            const FooterWidget(),
          ],
        ),
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
        mainAxisAlignment: MainAxisAlignment.center,
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
                    fontSize: 11,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Termos de Uso',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 11,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Ajuda',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 11,
                  ),
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
