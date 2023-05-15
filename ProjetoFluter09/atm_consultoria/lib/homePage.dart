import 'package:atm_consultoria/clientePAge.dart';
import 'package:atm_consultoria/contatoPage.dart';
import 'package:atm_consultoria/servicosPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:atm_consultoria/empresaPage.dart';
import 'package:atm_consultoria/ClientesBD.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATM Consultoria'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Image.asset('assets/imagens/logo.png'),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    child: Image.asset('assets/imagens/menu_empresa.png'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmpresaPage(),
                          ));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    child: Image.asset('assets/imagens/menu_servico.png'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ServicosPage(),
                          ));
                    },
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ClientePage(),
                          ));
                    },
                    child: Image.asset('assets/imagens/menu_cliente.png'),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContatoPage(),
                        ));
                  },
                  child: Image.asset('assets/imagens/menu_contato.png'),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
