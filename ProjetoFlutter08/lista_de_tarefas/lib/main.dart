import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/login.dart';
import 'home_page.dart';

import 'home_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: Login(),
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
    ),
  );
}
