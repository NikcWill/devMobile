import 'dart:convert';

import 'package:atm_consultoria/empresaPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:atm_consultoria/ClientesBD.dart';
import 'package:atm_consultoria/cliente.dart';



class ClientePage extends StatefulWidget {

 ClientePage({super.key});

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {

var clienteDB = ClienteDB.clientes[0]['users'];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: clienteDB.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                context, 
                 MaterialPageRoute(
                  builder: (context)=> 
                  ClienteInf(idUsuario: clienteDB[index]['id']-1),));
                print('Contato ${clienteDB[index]['id']} clicado!');
              },
              child: ListTile(
                title: Text(clienteDB[index]['firstName']),
                subtitle: Text(clienteDB[index]['email']),
                leading: Image.network(clienteDB[index]['image']),
        ));}
      ),)
    );
  }
}
