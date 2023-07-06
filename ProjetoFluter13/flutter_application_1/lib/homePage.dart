import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/secondPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var usuario;

TextEditingController _nome = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NeedFood"),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            padding: EdgeInsets.only(top: 230),
            child: Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) { 
                  return Image.asset(
                    'assets/imagens/backGround.png',
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width,
                    height: constraints.maxHeight,
                  );
                },
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 16.0),
              Container(
                color: Colors.green,
                child: Image.asset(
                  'assets/imagens/logotipo.png',
                  width: 300,
                  height: MediaQuery.of(context).size.height * 0.25,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20), 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sing In",
                        style: TextStyle(
                          fontFamily: AutofillHints.addressState,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    SizedBox(height: 60.0),
                    TextField(
                      controller: _nome,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'Login',
                        prefixIcon: Icon(Icons.person),
                        filled: true, 
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'Senha',
                          prefixIcon: Icon(Icons.lock),
                          filled: true, 
                          fillColor: Colors.white,),
                          obscureText: true,
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        usuario = _nome.text;
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecundPage(usuario: usuario),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          Size(600, 50),
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ), 
    );
  }
}
