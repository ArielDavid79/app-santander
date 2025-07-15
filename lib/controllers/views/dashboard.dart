import 'package:app_santander/controllers/views/pix_1.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool cardAberto = false;
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<String> stringList = [
    '1',
    '2',
    '3'];

    final List<dynamic> cardstransf =[
      {"titulo": "pix","icon":Icon.pix,"route":Pix1()},
      {"titulo": "Id_santander","icon":Icon.pix,"route":Pix1()},
      {"titulo": "pix","icon":Icon.pix,"route":Pix1()},
      
    ],

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:
                  cardAberto
                      ? MediaQuery.of(context).size.height * 0.49
                      : MediaQuery.of(context).size.height * 0.36,
              child: Stack(
                children: [
                  Image.asset("fundo_dashboard.png"),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("teste3.png", width: 150),
                        Row(
                          children: [
                            Icon(Icons.search_outlined, color: Colors.white),
                            Icon(Icons.message_outlined, color: Colors.white),
                            Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 145,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Olá, Ariel David",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            "Ag 12345-6 Cc 1234567-8",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.26,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          width: MediaQuery.of(context).size.width * 0.93,
                          height: cardAberto ? null : null,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.monetization_on,
                                        color: Colors.red,
                                        size: 30,
                                      ),
                                      SizedBox(width: 10),
                                      Text("Saldo disponível"),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        cardAberto = !cardAberto;
                                      });
                                    },
                                    icon:
                                        cardAberto
                                            ? Icon(Icons.keyboard_arrow_up)
                                            : Icon(Icons.keyboard_arrow_down),
                                  ),
                                ],
                              ),
                              cardAberto
                                  ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "R\$ 1000,00",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text("Saldo + Limite: R\$ 1000,00"),
                                      Text(
                                        "Entenda seu Limite",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.red,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Ver extrato",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Container para determinar a largura e altura da lista horizontal
            // para a lista não explodir a tela
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      child: Container(
                        width: 130,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.pix),
                            SizedBox(height: 10),
                            Text(cardstransf[index]["titulo"]),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Column dos cards vermelhos
            Column(
              children: [
                CarouselSlider(
                  items: [
                    Container(
                      height: 150,
                      width: double.maxFinite,
                      color: Colors.red,
                      child: Column(
                        children: [Text('Conta PJ + facil'), Text('Conta Mei')],
                      ),
                    ),
                    Text("2"),
                    Text("3"),
                  ],
                  carouselController: _controller,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    height: 100,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      stringList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            margin: EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 4.0,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                    _current == entry.key ? 0.9 : 0.4,
                                  ),
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                top: 12.0,
                bottom: 12.0,
              ),
              child: Text(
                "Cartoes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Color.fromARGB(255, 147, 145, 146),
                child: Container(
                  height: 218,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.credit_card, color: Colors.white),
                              SizedBox(width: 1),
                              Text(
                                "Cartão Final",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "2244",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      Text(
                        "Santander Elite Master",
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Limite disponivel",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "R\$ 6.000,00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      Text("Ver fatura", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 12, right: 12, top: 8),
              alignment: Alignment.center,
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text("Cartão online", style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
