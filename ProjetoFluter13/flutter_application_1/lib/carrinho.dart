import 'package:flutter/material.dart';
import 'produto.dart'; // Importe o arquivo onde as listas estão definidas

class CarrinhoDeCompra extends StatefulWidget {
  const CarrinhoDeCompra({Key? key});

  @override
  State<CarrinhoDeCompra> createState() => _CarrinhoDeCompraState();
}

class _CarrinhoDeCompraState extends State<CarrinhoDeCompra> {
  double totalDaCompra = 0;

  @override
  void initState() {
    super.initState();
    _updateTotal();
  }

  void _updateTotal() {
    totalDaCompra = 0;
    for (var produto in carroDeCompra) {
      double valor = produto['valor'];
      int quantidade = produto['quantidade'];
      totalDaCompra += valor * quantidade;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ListView.separated(
              itemCount: carroDeCompra.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                dynamic produto = carroDeCompra[index];
                String nome = produto['nome'] as String;
                int quantidade = produto['quantidade'];
                double valor = produto['valor'];
                double totalPorProduto = valor * quantidade;

                return ListTile(
                  title: Text(nome),
                  subtitle: Text('Quantidade: $quantidade\nPreço unitário \$${valor.toStringAsFixed(2)}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('\$${totalPorProduto.toStringAsFixed(2)}'),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (carroDeCompra[index]['quantidade'] > 0) {
                              carroDeCompra[index]['quantidade']--;
                              totalPorProduto = valor * carroDeCompra[index]['quantidade'];
                              _updateTotal();
                            }if(carroDeCompra[index]['quantidade'] == 0){
                              carroDeCompra.remove(produto);
                            }
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),
                      Text('$quantidade'),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            carroDeCompra[index]['quantidade']++;
                            totalPorProduto = valor * carroDeCompra[index]['quantidade'];
                            _updateTotal();
                          });
                        },
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                  leading: Image.asset(produto['foto']),
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                '\$${totalDaCompra.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text('Valor total da compra ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
