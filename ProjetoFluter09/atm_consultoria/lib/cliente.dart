

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'ClientesBD.dart';

class ClienteInf extends StatefulWidget {

  int idUsuario;

  ClienteInf({super.key, required this.idUsuario});

  @override
  State<ClienteInf> createState() => _ClienteInfState();
}

class _ClienteInfState extends State<ClienteInf> {
  var clienteDB = ClienteDB.clientes[0]['users'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(clienteDB[widget.idUsuario]['firstName']),
      ),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(15),
                color: Colors.amber,
                child:        
                Image.network(clienteDB[widget.idUsuario]['image']),
              ),
            ),
            Text(clienteDB[widget.idUsuario]['firstName'] +' ' + clienteDB[widget.idUsuario]['lastName']),
          ],
            
          
     
           
        ),
        
    ));
  }
}