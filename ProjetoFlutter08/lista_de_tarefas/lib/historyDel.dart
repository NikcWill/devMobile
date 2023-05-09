import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lista_de_tarefas/home_page.dart';

class HistoryDel extends StatefulWidget {

  List historico;

  HistoryDel({super.key, required this.historico});

  @override
  State<HistoryDel> createState() => _HistoryDelState();
}

TextEditingController _historico = TextEditingController();

class _HistoryDelState extends State<HistoryDel> {

  List listaRest = [];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Lixeira'),
        centerTitle: true,
        
        ),
      
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount:widget.historico.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(widget.historico[index]),
              subtitle: Text('subtitle'),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    listaRest.add(widget.historico[index]);
                    widget.historico.removeAt(index);
                    print(listaRest);
                                        
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Tarefa restaurada'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: Icon(Icons.restore),
              ),
              leading: Text('leading'),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        height: 40,
        shape: CircularNotchedRectangle(),
      ),
       
    
      );
  }
}