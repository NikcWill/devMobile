import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'secundPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController _nome = TextEditingController();
TextEditingController _cidade = TextEditingController();
var texto = 'Bem vindo';
List userCidade = [];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('App Clima')),
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Color.fromARGB(255, 53, 171, 226),
              Color.fromARGB(255, 94, 197, 223),
            ])),
            padding: EdgeInsets.all(30),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: TextField(
                    controller: _nome,
                    decoration: InputDecoration(
                      label: Text('Nome'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      focusedBorder: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: TextField(
                    controller: _cidade,
                    decoration: InputDecoration(
                        label: Text('Nome da Cidade'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      userCidade.add(_nome.text);
                      userCidade.add(_cidade.text);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SegundaPage()));
                      print(userCidade.toString());
                    },
                    child: Text('Consultar temperatura'))
              ],
            )));
  }
}
