import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
    ),
  );
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pagecontroller = PageController();

  int active = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            accountName: Text('Nicollas'),
            accountEmail: Text('nikcwill@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Text('N'),
            ),
          ),
          ListTile(
            onTap: () {
              _pagecontroller.jumpToPage(1);
              Navigator.pop(context);
              setState(() {
                active = 1;
              });
            },
            onLongPress: () => print('Estou na home'),
            title: Text('pagina 01'),
            trailing: Icon(Icons.category),
            leading: CircleAvatar(),
            subtitle: Text('Toma'),
          ),
          ListTile(
            onTap: () {
              _pagecontroller.jumpToPage(2);
              Navigator.pop(context);
              setState(() {
                active = 2;
              });
            },
            onLongPress: () => print('Estou na home'),
            title: Text('Home'),
            trailing: Icon(Icons.home),
            leading: CircleAvatar(),
            subtitle: Text('Toma'),
          ),
          ListTile(
            onTap: () {
              _pagecontroller.jumpToPage(3);
              Navigator.pop(context);
              setState(() {
                active = 3;
              });
            },
            onLongPress: () => print('Estou na home'),
            title: Text('Home'),
            trailing: Icon(Icons.home),
            leading: CircleAvatar(),
            subtitle: Text('Toma'),
          ),
        ]),
      ),
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
      body: PageView(
        controller: _pagecontroller,
        children: [
          Container(
            child: Column(
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
          ),
          Container(
            color: Colors.amber,
            child: ListView(children: [
              ListTile(
                title: Text('Joãozinho'),
                trailing: Icon(Icons.phone),
                leading: CircleAvatar(
                  child: Text('J'),
                ),
                subtitle: Text('48-9999-6664'),
              ),
              ListTile(
                title: Text('Joãozinho'),
                trailing: Icon(Icons.phone),
                leading: CircleAvatar(
                  child: Text('J'),
                ),
                subtitle: Text('48-9999-6664'),
              ),
              ListTile(
                title: Text('Joãozinho'),
                trailing: Icon(Icons.phone),
                leading: CircleAvatar(
                  child: Text('J'),
                ),
                subtitle: Text('48-9999-6664'),
              ),
            ]),
          ),
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.red,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade600,
        type: BottomNavigationBarType.fixed,
        currentIndex: active,
        onTap: (value) {
          _pagecontroller.animateToPage(value,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
          setState(() {
            active = value;
          });
        },
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
