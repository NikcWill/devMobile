import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lista_de_tarefas/historyDel.dart';
import 'package:lista_de_tarefas/login.dart';

class Home extends StatefulWidget {
  String nomeUsuario;
  List restauradas;
  
  Home({super.key, required this.nomeUsuario, this.restauradas});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  List listaDelete =[];
  List tarefas = ['Estudar', 'Ir para academia', 'Jogar'];
  TextEditingController _nomeTarefa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(widget.nomeUsuario),
              accountEmail: Text(''),
              currentAccountPicture: CircleAvatar(
                child: Text(widget.nomeUsuario[0].toUpperCase()),
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: ElevatedButton(
                  onPressed: () {
                    print();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HistoryDel(historico: listaDelete.toList()),
                        
                      ),);
                      
                  },
                  child: Text('Lixeira'),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('To do List'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: tarefas.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tarefas[index]),
              subtitle: Text('subtitle'),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    listaDelete.add(tarefas[index]);
                    tarefas.removeAt(index);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Tarefa deletada!!!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: Icon(Icons.delete),
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
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Adicionar Tarefa'),
                  content: TextField(
                    controller: _nomeTarefa,
                  ),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              tarefas.add(_nomeTarefa.text);
                              _nomeTarefa.clear();
                            });
                            Navigator.pop(context);
                          },
                          child: Text('Adicionar'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            _nomeTarefa.clear();
                          },
                          child: Text('Cancelar'),
                        ),
                      ],
                    ),
                  ],
                );
              },
              );
        },
        
        
        child: Icon(Icons.add),
      ),
    );
  }
}
