import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/carrinho.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/listaFavoritos.dart';
import 'package:flutter_application_1/produto.dart';
import 'package:flutter_application_1/produtosDB.dart';

class SecundPage extends StatefulWidget {
  dynamic usuario;

  SecundPage({super.key, required this.usuario});

  @override
  State<SecundPage> createState() => _SecundPageState();
}

class _SecundPageState extends State<SecundPage> {
  int active = 0;

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
        title: Center(
          child: Text(
            "Olá  ${this.widget.usuario}",
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            active = index;
          });
        },
        children: [
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    margin: EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'Pesquisar',
                        suffixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.025),
                  Container(
                    margin:
                        EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0),
                    width: double.infinity,
                    height: 150,
                    child: Stack(children: [
                      Positioned(
                        top: 0,
                        child: Image.asset('assets/imagens/banner.png',
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                        top: 0,
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 16.0),
                                Text(
                                  'Poket Cheese \nBurguer komplit',
                                  style: TextStyle(
                                    fontFamily: AutofillHints.addressState,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                ElevatedButton(
                                  onPressed: () {
                                    print(carroDeCompra);
                                    print('-------------');
                                    print(favoritos);
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.red),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  child: Text(' Order Now'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    width: double.infinity,
                    height: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 25, right: 0, top: 10, bottom: 0),
                          child: Text(
                            "Categorias",
                            style: TextStyle(
                              fontFamily: AutofillHints.addressState,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/imagens/burgerCat.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                'assets/imagens/coffe.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                'assets/imagens/pizzaCat.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 25, right: 0, top: 0, bottom: 10),
                          child: Text(
                            "Popular Now",
                            style: TextStyle(
                              fontFamily: AutofillHints.addressState,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, right: 15, top: 30, bottom: 0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Produto(
                                        idComida: 4,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: Image.asset(
                                    'assets/imagens/pizza.png',
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Produto(idComida: 1),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: Image.asset(
                                    'assets/imagens/burger.png',
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Produto(idComida: 5),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: Image.asset(
                                    'assets/imagens/pizza.png',
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Produto(idComida: 2),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: Image.asset(
                                    'assets/imagens/burger.png',
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 25, right: 0, top: 25, bottom: 10),
                          child: Text(
                            "Recommended",
                            style: TextStyle(
                              fontFamily: AutofillHints.addressState,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, right: 15, top: 30, bottom: 0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Produto(idComida: 3),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: Image.asset(
                                    'assets/imagens/burgerRec.png',
                                    width: 200,
                                    height: 200,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Produto(idComida: 6),
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: 15, right: 15, top: 0, bottom: 0),
                                  child: Image.asset(
                                    'assets/imagens/rap.png',
                                    width: 200,
                                    height: 200,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Produto(idComida: 3),
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: 0, right: 15, top: 0, bottom: 0),
                                  child: Image.asset(
                                    'assets/imagens/burgerRec.png',
                                    width: 200,
                                    height: 200,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Produto(idComida: 7),
                                    ),
                                  );
                                },
                                child: Container(
                                  child: Image.asset(
                                    'assets/imagens/rap.png',
                                    width: 200,
                                    height: 200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Favoritos(),
          CarrinhoDeCompra(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.075,
        child: BottomNavigationBar(
          iconSize: MediaQuery.of(context).size.height * 0.025,
          type: BottomNavigationBarType.fixed,
          currentIndex: active,
          onTap: (value) {
            _pageController.animateToPage(
              value,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
            setState(() {
              active = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'Carrinho',
            ),
          ],
        ),
      ),
    );
  }
}
