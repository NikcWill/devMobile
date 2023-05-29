import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/api.dart';
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
                    child: Center(
                      child: Image.asset('assets/imagens/imageHome.png',
                        fit: BoxFit.contain,
                        width: 140,
                        height: 140,),
                    ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _nome,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      label: Text('Nome', style: 
                        TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              
                Container(
                  padding: EdgeInsets.all(30),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _cidade,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        label: Text('Nome da Cidade', style: 
                          TextStyle(color: Colors.white),),
                    ),  
                  ),
                ),
                                                
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                    onPressed: () {
                      userCidade.add(_nome.text);
                      userCidade.add(_cidade.text);
                      getAPI(_cidade.text);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SegundaPage()));
                                 
                    },
                    child: Text('Consultar temperatura', style: 
                          TextStyle(color: Colors.white),))
              ],
            )));
  }
}
