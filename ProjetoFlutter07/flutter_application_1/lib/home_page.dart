import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController _nome = TextEditingController();
var texto = 'Bem vindo! ';
var imput = _nome.text;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navegação'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nome,
              obscureText: true,
              decoration: InputDecoration(
                  label: Text('Nome'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  print(_nome.text);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(texto: texto)));
                },
                child: Text('Ir para segunda pagina'))
          ],
        ),
      ),
    );
    ;
  }
}
