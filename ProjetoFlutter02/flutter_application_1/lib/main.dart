import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Adicione a ação desejada ao pressionar o botão de pesquisa
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56), // Define a altura do TextField

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Pesquisar',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true, // Define o preenchimento da caixa de pesquisa
                  fillColor: Colors.grey[200]),
            ),
          ),
        ),
        toolbarHeight: 100,
        title: Text(
          'EKart',
        ),
        backgroundColor: Colors.blue.shade600,
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.grey.shade600,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: Center(
                  child: Text('Teu saldo é de 1.000.000'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.grey.shade600,
                width: 50,
                height: 50,
                child: Center(
                  child: Text('Teu saldo é de 1.000.000'),
                ),
              ),
              Container(
                color: Colors.grey.shade600,
                width: 50,
                height: 50,
                child: Center(
                  child: Text('Ta rico'),
                ),
              ),
              Container(
                color: Colors.grey.shade600,
                width: 50,
                height: 50,
                child: Center(
                  child: Text('Ta rico'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.grey.shade600,
                width: 50,
                height: 50,
                child: Center(
                  child: Text('Teu saldo é de 1.000.000'),
                ),
              ),
              Container(
                color: Colors.grey.shade600,
                width: 50,
                height: 50,
                child: Center(
                  child: Text('Ta rico'),
                ),
              ),
              Container(
                color: Colors.grey.shade600,
                width: 50,
                height: 50,
                child: Center(
                  child: Text('Ta rico'),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.blue.shade600,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'cart',
          ),
        ],
      ),
    );
  }
}
