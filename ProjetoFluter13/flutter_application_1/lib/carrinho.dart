import 'package:flutter/material.dart';
import 'package:flutter_application_1/secondPage.dart';
import 'homePage.dart';
import 'produto.dart';

class CarrinhoDeCompra extends StatefulWidget {
  const CarrinhoDeCompra({Key? key});

  @override
  State<CarrinhoDeCompra> createState() => _CarrinhoDeCompraState();
}

class _CarrinhoDeCompraState extends State<CarrinhoDeCompra> {
  String _metodoInicial = 'PIX';
  List<String> _foramasDePagamento = ['Débito', 'Crédito', 'PIX', 'Dinheiro'];
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
                  subtitle: Text(
                      'Quantidade: $quantidade\nPreço unitário \$${valor.toStringAsFixed(2)}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('\$${totalPorProduto.toStringAsFixed(2)}'),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (carroDeCompra[index]['quantidade'] > 0) {
                              carroDeCompra[index]['quantidade']--;
                              totalPorProduto =
                                  valor * carroDeCompra[index]['quantidade'];
                              _updateTotal();
                            }
                            if (carroDeCompra[index]['quantidade'] == 0) {
                              carroDeCompra.remove(produto);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('$nome removido do carrinho'),
                                  duration: Duration(seconds: 1),
                                ),
                              );
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
                            totalPorProduto =
                                valor * carroDeCompra[index]['quantidade'];
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
            bottom: 60,
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
            bottom: 60,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Valor total da compra ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: carroDeCompra.isNotEmpty
                      ? () {
                          if (carroDeCompra.isNotEmpty) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Forma de pagamento'),
                                  content: DropdownButtonFormField<String>(
                                    value: _metodoInicial,
                                    onChanged: (value) {
                                      setState(() {
                                        _metodoInicial = value!;
                                      });
                                    },
                                    items: _foramasDePagamento.map((method) {
                                      return DropdownMenuItem<String>(
                                        value: method,
                                        child: Text(method),
                                      );
                                    }).toList(),
                                  ),
                                  actions: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              carroDeCompra.clear();
                                            });
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content:
                                                    Text('Pedido realizado'),
                                                duration: Duration(seconds: 1),
                                              ),
                                            );
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SecundPage(
                                                        usuario: usuario),
                                              ),
                                            );
                                          },
                                          child: Text('Pagar'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('Cancelar'),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        }
                      : null, // Define como null se a lista estiver vazia
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(390, 50),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text('Fechar pedido'),
                )),
          ),
        ],
      ),
    );
  }
}
