import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/carrinho.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/produtosDB.dart';
import 'package:flutter_application_1/secondPage.dart';
import 'package:flutter_application_1/secondPage.dart';

List<dynamic> carroDeCompra = [];
List<dynamic> favoritos = [];

class Produto extends StatefulWidget {
  int idComida;

  Produto({
    super.key,
    required this.idComida,
  });

  @override
  State<Produto> createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  var produtoEscolhido = ProdutosDB.produto[0]['comidas'];
  bool isFavorito = false;

  @override
  void initState() {
    super.initState();
    verificarFavorito();
  }

  void verificarFavorito() {
    var produtoEscolhidoAtual = produtoEscolhido[widget.idComida - 1];

    if (favoritos.contains(produtoEscolhidoAtual)) {
      setState(() {
        isFavorito = true;
      });
    } else {
      setState(() {
        isFavorito = false;
      });
    }
  }

  void verificarCarrinho() {
    var produtoEscolhidoAtual = produtoEscolhido[widget.idComida - 1];

    for (var produto in carroDeCompra) {
      if (produto['id'] == produtoEscolhidoAtual['id']) {
        // O produto já está no carrinho, atualize apenas a quantidade
        setState(() {
          produto['quantidade']++; // Atualize a quantidade conforme necessário
        });
        return;
      }
    }

    // Se o produto não estiver no carrinho, adicione-o com quantidade 1
    setState(() {
      produtoEscolhidoAtual['quantidade'] = 1;
      carroDeCompra.add(produtoEscolhidoAtual);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.grey),
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: isFavorito ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                produtoEscolhido[widget.idComida]['favorito'] = true;

                setState(() {
                  isFavorito = !isFavorito;
                });
                if (isFavorito) {
                  produtoEscolhido[widget.idComida - 1]['favorito'] = true;
                  favoritos.add(produtoEscolhido[widget.idComida - 1]);
                } else {
                  produtoEscolhido[widget.idComida - 1]['favorito'] = false;
                  favoritos.remove(produtoEscolhido[widget.idComida - 1]);
                }
                ;
              },
            ),
          ],
        ),
        body: Stack(fit: StackFit.expand, children: [
          Positioned(
            top: 0,
            child: Container(
              child: Image.asset(
                'assets/imagens/imagemFundo2.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 160.0),
                  Container(
                      width: 330,
                      height: 220,
                      child: Image.asset(
                        '${produtoEscolhido[widget.idComida - 1]['foto']}',
                        fit: BoxFit.contain,
                      )),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            produtoEscolhido[widget.idComida - 1]['nome'],
                            style: TextStyle(
                              fontFamily: AutofillHints.addressState,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              child: Text(
                                '\$${produtoEscolhido[widget.idComida - 1]['valor']}',
                                style: TextStyle(
                                  fontFamily: AutofillHints.addressState,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Text(
                              '${produtoEscolhido[widget.idComida]['avaliacao']}')
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Text('Descrição',
                                  style: TextStyle(
                                    fontFamily: AutofillHints.addressState,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25),
                            child: Text(
                              '${produtoEscolhido[widget.idComida]['descricao']}',
                              style: TextStyle(
                                  fontFamily: AutofillHints.addressState,
                                  fontSize: 15,
                                  height: 1.5),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 100.0),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          SecundPage(
                            usuario: usuario,
                          ),
                        );
                        verificarCarrinho();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Produto adicionado ao carrinho'),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          Size(600, 50),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      child: Text('Adionar ao carrinho'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
