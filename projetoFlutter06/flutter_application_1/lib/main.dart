import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Jo-Ken -Po'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.amber,
        child: Column(
          children: [
            Text('Sua Jogada'),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CircleAvatar(radius: 60),
              CircleAvatar(radius: 60),
              CircleAvatar(radius: 60),
            ]),
          ],
        ),
      ),
    );
  }
}
