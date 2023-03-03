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
        appBar: AppBar(
          title: Text(
            'NuBank',
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Row(
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
        ));
  }
}
