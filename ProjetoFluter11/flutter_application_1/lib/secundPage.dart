import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SegundaPage extends StatefulWidget {
  List userCidade2;
  
  SegundaPage({super.key, required this.userCidade2});

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Text('Olá! ${widget.userCidade2[0][0].toUpperCase() + widget.userCidade2[0].substring(1)}',
               style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              ),
            
            Container(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _cidade2,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        label: Text('Nome da Cidade', style: 
                          TextStyle(color: Colors.white),),
                    ),  
                  ),
                ),
                
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                    onPressed: () {                          
                    },
                    child: Text('Consultar temperatura', style: 
                          TextStyle(color: Colors.white, fontSize: 15),
                          
                          
                    ),
                ),

                Container(
                  height: 80,
                ),
              
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 60,
                        child:
                          Text(widget.userCidade2[1][0].toUpperCase() + widget.userCidade2[1].substring(1), 
                          style: TextStyle(fontSize: 30, color: Colors.white),),
                      ),
                     
                      Container(
                        child:
                        Text('Clima', style: TextStyle(fontSize: 20, color: Colors.white),),
                      ),
                      Container(
                        padding: EdgeInsets.all(30),
                        child:
                          CircleAvatar(
                            child: Text(
                              'imagem',
                              style: TextStyle(fontSize: 30),
                            ),
                            radius: 70,
                          )
                      ),
                      Container(
                        padding: EdgeInsets.all(40),
                        child:
                          CircleAvatar(
                            child: Text(
                              '18°',
                              style: TextStyle(fontSize: 60),
                            ),
                            radius: 70,
                          )
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Text('Temp max e min', style: TextStyle(
                          fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: 
                        Text('prev chuva', style: TextStyle(
                          fontSize: 20, color: Colors.white),),
                      ),
                       
                    ],
                  ),
                ),
                
            
                Container(
                  child: Text('ultima pesquisa', style: TextStyle(
                    fontSize: 20, color: Colors.white),
                  ),)
                
              
            
          ],
        ),
      ),
    );
  }
}
