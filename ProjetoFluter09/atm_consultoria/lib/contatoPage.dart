import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContatoPage extends StatefulWidget {
  const ContatoPage({super.key});

  @override
  State<ContatoPage> createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conatato'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assets/imagens/detalhe_contato.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Contato",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Container(
              
              child:Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text("atendimento@atmconsultoria.com.br",
                            style: TextStyle(fontSize: 20),),
                      ],
                                   ),
                  ),
                 Container(
                  padding: EdgeInsets.all(20),
                   child: Row(
                      children: [
                        Text("Telefone: (11) 3525-8596",
                            style: TextStyle(fontSize: 20),),
                      ],
                   ),
                 ),
                 Container(
                  padding: EdgeInsets.all(20),
                   child: Row(
                      children: [
                        Text("Celular; (11) 99586-5236",
                            style: TextStyle(fontSize: 20),),
                      ],
                   ),
                 ),
                 
                ],
              ),),
          ],
      ),),
    
    );
  }
}
