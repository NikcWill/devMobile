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

class _HistoryDelState extends State<HistoryDel> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(
        title: Text('To do List'),
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
                    
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Tarefa deletada!!!'),
                      duration: Duration(seconds: 5),
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
       
    
      );
  }
}