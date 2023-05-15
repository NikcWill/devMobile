import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ServicosPage extends StatefulWidget {
  const ServicosPage({super.key});

  @override
  State<ServicosPage> createState() => _ServicosPageState();
}

class _ServicosPageState extends State<ServicosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serviços'),
      ),

      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assets/imagens/detalhe_servico.png"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Sobre a empresa",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Container(
              
              child:Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text("Consultoria",
                            style: TextStyle(fontSize: 20),),
                      ],
                                   ),
                  ),
                 Container(
                  padding: EdgeInsets.all(20),
                   child: Row(
                      children: [
                        Text("Cálculo de preços",
                            style: TextStyle(fontSize: 20),),
                      ],
                   ),
                 ),
                 Container(
                  padding: EdgeInsets.all(20),
                   child: Row(
                      children: [
                        Text("Acompanhamento de projetos",
                            style: TextStyle(fontSize: 20),),
                      ],
                   ),
                 ),
                 
                ],
              ),),
                  
                  
                    
                     
                  
                
            
      ],
      ),),
    
    );
  }
}
