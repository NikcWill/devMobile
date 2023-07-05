import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/produto.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {


@override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
                title: Text('Favoritos'),
                centerTitle: true,
              ),body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ListView.separated(
              itemCount: favoritos.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                dynamic produto = favoritos[index];
                String nome = produto['nome'] as String;
                double valor = produto['valor'];
                return ListTile(
                  title: Text(nome),
                  subtitle: Text('Preço unitário \$${valor.toStringAsFixed(2)}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            favoritos.remove(produto);
                          });
                        },
                        icon: Icon(Icons.delete_sharp),
                      ),

                    ],
                  ),
                  leading: Image.asset(produto['foto']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}