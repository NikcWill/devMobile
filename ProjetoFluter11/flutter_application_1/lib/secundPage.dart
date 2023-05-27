import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SegundaPage extends StatefulWidget {
  const SegundaPage({super.key});

  @override
  State<SegundaPage> createState() => _SegundaPageState();
}

TextEditingController _cidade2 = TextEditingController();

class _SegundaPageState extends State<SegundaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Clima')),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
          Color.fromARGB(255, 53, 171, 226),
          Color.fromARGB(255, 94, 197, 223),
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Olá! Nome'),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: TextField(
                controller: _cidade2,
                decoration: InputDecoration(
                    label: Text('Nome da Cidade'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {}, child: Text('Consultar temperatura')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Cidade'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Clima'),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            child: Text(
                              '18°',
                              style: TextStyle(fontSize: 70),
                            ),
                            radius: 70,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text('Temp max e min'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('prev chuva'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('ultima pesquisa'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
