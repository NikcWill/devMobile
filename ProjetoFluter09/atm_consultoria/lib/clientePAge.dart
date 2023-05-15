import 'dart:convert';

import 'package:atm_consultoria/empresaPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:atm_consultoria/ClientesBD.dart';


class ClientePage extends StatefulWidget {

 ClientePage({super.key});

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {

void listaNomes(){
  for (int i=0; i < clienteDB.length; i++){
      print(clienteDB[i]['firstName']);
      }
}



var clienteDB = ClienteDB.clientes[0]['users'];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
      ),
      body: Container(
          child: ElevatedButton(
                        onPressed: () {
                          print(this.clienteDB.length);
                          this.listaNomes();
                                                  
                          },child: Text("clicar"),

       

      ),)
    );
  }
}
