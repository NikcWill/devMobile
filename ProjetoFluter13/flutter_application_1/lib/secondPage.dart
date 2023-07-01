import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/homePage.dart';

class SecundPage extends StatefulWidget {
  var usuario;

  SecundPage({super.key, required this.usuario});

  @override
  State<SecundPage> createState() => _SecundPageState();
}

class _SecundPageState extends State<SecundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Olá  ${this.widget.usuario}")),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Pesquisar',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                width: 600,
                height: 150,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 170,
                color: Colors.green,
                child: Text("Categorias"),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 200,
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
