import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EmpresaPage extends StatefulWidget {
  const EmpresaPage({super.key});

  @override
  State<EmpresaPage> createState() => _EmpresaPageState();
}

class _EmpresaPageState extends State<EmpresaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empresa'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Image.asset("assets/imagens/detalhe_empresa.png"),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Sobre a empresa",
                style: TextStyle(color: Colors.orange, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
