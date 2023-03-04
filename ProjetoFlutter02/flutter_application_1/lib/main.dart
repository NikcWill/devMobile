import 'package:flutter/material.dart';

void main(List<String> args) {
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
      backgroundColor: Colors.blue.shade600,
      drawer: Drawer(),
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Text(
          'NuBank',
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.grey.shade600,
                width: 200,
                height: 200,
                child: Center(
                  child: Text('Teu saldo é de 1.000.000'),
                ),
              ),
              Container(
                color: Colors.grey.shade600,
                width: 200,
                height: 200,
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
                width: 200,
                height: 200,
                child: Center(
                  child: Text('Teu saldo é de 1.000.000'),
                ),
              ),
              Container(
                color: Colors.grey.shade600,
                width: 200,
                height: 200,
                child: Center(
                  child: Text('Ta rico'),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
