import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List jogo = ['Pedra', 'Papel', 'Tesoura'];

  void gerarJogadaPc() {
    var gerarNumero = Random().nextInt(jogo.length);
    var jogadaSorteada = jogo[gerarNumero];
    setState(() {
      jogadaPc = jogadaSorteada;
    });

    if (jogadaVoce == jogadaSorteada) {
      setState(() {
        resultado = 'Empate! Jogue novamente!';
      });
    } else if (jogadaVoce == 'Pedra' && jogadaPc == 'Tesoura' ||
        jogadaVoce == 'Papel' && jogadaPc == 'Pedra' ||
        jogadaVoce == 'Tesoura' && jogadaPc == 'Papel') {
      setState(() {
        resultado = 'Você Ganhou';
        contVc = contVc + 1;
      });
    } else {
      setState(() {
        resultado = 'O PC Ganhou';
        contPc = contPc + 1;
      });
    }
  }

  var jogadaPc = 'PC Aguardando!';
  var jogadaVoce = '';
  var resultado = 'Aguardadno';
  var contVc = 0;
  var contPc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Jo-Ken -Po'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(50),
                  child: Text('Sua Jogada'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        jogadaVoce = jogo[0];
                        gerarJogadaPc();
                      },
                      child: CircleAvatar(
                        child: Text(jogo[0]),
                        radius: 80,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        jogadaVoce = jogo[1];
                        gerarJogadaPc();
                      },
                      child: CircleAvatar(
                        child: Text(jogo[1]),
                        radius: 80,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        jogadaVoce = jogo[2];
                        gerarJogadaPc();
                      },
                      child: CircleAvatar(
                        child: Text(jogo[2]),
                        radius: 80,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text('Jogada do computador'),
                  padding: EdgeInsets.all(50),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: Text(jogadaPc),
                      radius: 80,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text('resultado'),
                  padding: EdgeInsets.all(50),
                ),
                Container(
                  child: Text(resultado),
                  padding: EdgeInsets.all(5),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text('Placar'),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(70)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Voce'),
                            Text('PC'),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                contVc.toString(),
                                style: TextStyle(
                                  fontSize: 60,
                                ),
                              ),
                              Text(
                                contPc.toString(),
                                style: TextStyle(
                                  fontSize: 60,
                                ),
                              ),
                            ])
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
